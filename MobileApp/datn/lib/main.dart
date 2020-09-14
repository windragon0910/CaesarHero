import 'package:datn/data/local/user_local_source_impl.dart';
import 'package:datn/data/remote/auth_client.dart';
import 'package:datn/data/repository/user_repository_impl.dart';
import 'package:datn/domain/repository/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider/flutter_provider.dart';
import 'package:http/http.dart' as http;
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final auth = FirebaseAuth.instance;
  final preferences = RxSharedPreferences.getInstance();
  final userLocalSource = UserLocalSourceImpl(preferences);
  final client = http.Client();

  final normalClient = NormalClient(client);
  final authClient = AuthClient(client, userLocalSource, auth);

  final userRepository = UserRepositoryImpl(
    auth,
    userLocalSource,
    authClient,
    normalClient,
    userResponseToUserLocal,
  );

  runApp(
    Providers(
      providers: [
        Provider<UserRepository>(value: userRepository),
      ],
      child: MyApp(),
    ),
  );
}
