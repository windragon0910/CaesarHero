import 'dart:convert';
import 'dart:math';

import 'package:file/src/interface/file.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:pedantic/pedantic.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';
import 'package:rxdart/rxdart.dart' hide Notification;
import 'package:rxdart_ext/rxdart_ext.dart' hide Notification;

import 'data/mappers.dart' show notificationResponseToNotification;
import 'data/remote/auth_client.dart';
import 'data/remote/base_url.dart';
import 'data/remote/response/notification_response.dart';
import 'domain/model/notification.dart';

class FcmNotificationManager {
  static const channelId = 'com.hoc.datn';
  static const channelName = 'com.hoc.datn.channel';
  static const channelDescription = 'Enjoy movie notification channel';
  static const _notificationIdKey = 'com.hoc.datn.notification.id';
  static final _minId = -pow(2, 31).toInt();
  static final _maxId = pow(2, 31).toInt() - 1;

  final AuthClient _authClient;
  final FirebaseMessaging _firebaseMessaging;
  final RxSharedPreferences _prefs;

  Future<int> _getAndIncrementId() =>
      _prefs.getInt(_notificationIdKey).then((id) {
        var newId = id == null ? _minId : id + 1;
        if (newId > _maxId) {
          newId = _minId;
        }

        print('$_minId $_maxId : $id $newId');
        return _prefs.setInt(_notificationIdKey, newId).then((_) => newId);
      });

  var _setupNotification = false;
  final _cacheManager = DefaultCacheManager();
  final _reservationIdS = PublishSubject<String>();

  late Stream<Notification> _notification$;

  FcmNotificationManager(
      this._authClient, this._firebaseMessaging, this._prefs) {
    final initial$ =
        _firebaseMessaging.getInitialMessage().asStream().whereNotNull();

    _notification$ = Rx.concat([initial$, FirebaseMessaging.onMessage])
        .asyncExpand(_handleRemoteMessage)
        .publish()
          ..connect();
  }

  Future<Notification> _getNotificationById(String id) {
    return _authClient.getBody(buildUrl('/notifications/${id}')).then(
          (json) => notificationResponseToNotification(
              NotificationResponse.fromJson(json)),
        );
  }

  Future<void> setupNotification() async {
    if (_setupNotification) {
      return;
    }

    const initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');

    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
    );

    await FlutterLocalNotificationsPlugin().initialize(
      initializationSettings,
      onSelectNotification: _onSelectNotification,
    );

    final details = await FlutterLocalNotificationsPlugin()
        .getNotificationAppLaunchDetails();
    unawaited(_onSelectNotification(details?.payload));

    _setupNotification = true;
  }

  Stream<Notification> _handleRemoteMessage(RemoteMessage message) async* {
    try {
      print('>>>>>>>>>>> onMessage: $message');

      final notification = message.notification;
      final data = message.data;
      if (notification == null) {
        return;
      }
      if (data == null) {
        return;
      }

      File? imageFile;
      try {
        imageFile = await _cacheManager.getSingleFile(data['image'] ?? '');
      } catch (_) {}

      final androidPlatformChannelSpecifics = AndroidNotificationDetails(
        channelId,
        channelName,
        channelDescription,
        importance: Importance.max,
        priority: Priority.high,
        showWhen: true,
        autoCancel: true,
        enableVibration: true,
        playSound: true,
        styleInformation: imageFile != null
            ? BigPictureStyleInformation(
                FilePathAndroidBitmap(imageFile.path),
                hideExpandedLargeIcon: true,
              )
            : null,
      );

      final platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
      );

      await FlutterLocalNotificationsPlugin().show(
        await _getAndIncrementId(),
        notification.title ?? data['title'] ?? '',
        notification.body ?? data['body'] ?? '',
        platformChannelSpecifics,
        payload: jsonEncode(data),
      );

      final id = data['_id'];
      if (id is String) {
        yield await _getNotificationById(id);
      }
    } catch (e, s) {
      print('>>>>>>>>>>> onMessage: $message error: $e $s');
      rethrow;
    }
  }

  Future<void> _onSelectNotification(String? payload) {
    if (payload == null) {
      return SynchronousFuture(null);
    }

    try {
      final map = jsonDecode(payload) as Map<String, dynamic>;
      final reservationId = map['reservation'] as String;
      if (reservationId != null) {
        print('>>>>>>>>>>> onSelectNotification: reservationId=$reservationId');
        _reservationIdS.add(reservationId);
      }
    } catch (e, s) {
      print('>>>>>>>>>>> onSelectNotification: $payload error: $e $s');
    }

    return SynchronousFuture(null);
  }

  Stream<Notification> get notification$ => _notification$;

  Stream<String> get reservationId$ => _reservationIdS;
}

/// Define a top-level named handler which background/terminated messages will
/// call.
///
/// To verify things are working, check out the native platform logs.
Future<dynamic> myBackgroundMessageHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}
