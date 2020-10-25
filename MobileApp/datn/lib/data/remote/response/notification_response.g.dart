// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationResponse> _$notificationResponseSerializer =
    new _$NotificationResponseSerializer();
Serializer<NotificationResponse_ReservationResponse>
    _$notificationResponseReservationResponseSerializer =
    new _$NotificationResponse_ReservationResponseSerializer();

class _$NotificationResponseSerializer
    implements StructuredSerializer<NotificationResponse> {
  @override
  final Iterable<Type> types = const [
    NotificationResponse,
    _$NotificationResponse
  ];
  @override
  final String wireName = 'NotificationResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, NotificationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'to_user',
      serializers.serialize(object.to_user,
          specifiedType: const FullType(String)),
      'reservation',
      serializers.serialize(object.reservation,
          specifiedType:
              const FullType(NotificationResponse_ReservationResponse)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  NotificationResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'to_user':
          result.to_user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reservation':
          result.reservation.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(NotificationResponse_ReservationResponse))
              as NotificationResponse_ReservationResponse);
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationResponse_ReservationResponseSerializer
    implements StructuredSerializer<NotificationResponse_ReservationResponse> {
  @override
  final Iterable<Type> types = const [
    NotificationResponse_ReservationResponse,
    _$NotificationResponse_ReservationResponse
  ];
  @override
  final String wireName = 'NotificationResponse_ReservationResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, NotificationResponse_ReservationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'original_price',
      serializers.serialize(object.original_price,
          specifiedType: const FullType(int)),
      'phone_number',
      serializers.serialize(object.phone_number,
          specifiedType: const FullType(String)),
      'products',
      serializers.serialize(object.products,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ProductIdAndQuantity)])),
      'total_price',
      serializers.serialize(object.total_price,
          specifiedType: const FullType(int)),
      'show_time',
      serializers.serialize(object.show_time,
          specifiedType: const FullType(ShowTimeFullResponse)),
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(String)),
      'payment_intent_id',
      serializers.serialize(object.payment_intent_id,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(DateTime)),
    ];
    if (object.is_active != null) {
      result
        ..add('is_active')
        ..add(serializers.serialize(object.is_active,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  NotificationResponse_ReservationResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationResponse_ReservationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'original_price':
          result.original_price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'phone_number':
          result.phone_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'products':
          result.products.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductIdAndQuantity)]))
              as BuiltList<Object>);
          break;
        case 'total_price':
          result.total_price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'show_time':
          result.show_time.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ShowTimeFullResponse))
              as ShowTimeFullResponse);
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payment_intent_id':
          result.payment_intent_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationResponse extends NotificationResponse {
  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String to_user;
  @override
  final NotificationResponse_ReservationResponse reservation;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$NotificationResponse(
          [void Function(NotificationResponseBuilder) updates]) =>
      (new NotificationResponseBuilder()..update(updates)).build();

  _$NotificationResponse._(
      {this.id,
      this.title,
      this.body,
      this.to_user,
      this.reservation,
      this.createdAt,
      this.updatedAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('NotificationResponse', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('NotificationResponse', 'title');
    }
    if (body == null) {
      throw new BuiltValueNullFieldError('NotificationResponse', 'body');
    }
    if (to_user == null) {
      throw new BuiltValueNullFieldError('NotificationResponse', 'to_user');
    }
    if (reservation == null) {
      throw new BuiltValueNullFieldError('NotificationResponse', 'reservation');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('NotificationResponse', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('NotificationResponse', 'updatedAt');
    }
  }

  @override
  NotificationResponse rebuild(
          void Function(NotificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationResponseBuilder toBuilder() =>
      new NotificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationResponse &&
        id == other.id &&
        title == other.title &&
        body == other.body &&
        to_user == other.to_user &&
        reservation == other.reservation &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), title.hashCode),
                        body.hashCode),
                    to_user.hashCode),
                reservation.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationResponse')
          ..add('id', id)
          ..add('title', title)
          ..add('body', body)
          ..add('to_user', to_user)
          ..add('reservation', reservation)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class NotificationResponseBuilder
    implements Builder<NotificationResponse, NotificationResponseBuilder> {
  _$NotificationResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _to_user;
  String get to_user => _$this._to_user;
  set to_user(String to_user) => _$this._to_user = to_user;

  NotificationResponse_ReservationResponseBuilder _reservation;
  NotificationResponse_ReservationResponseBuilder get reservation =>
      _$this._reservation ??=
          new NotificationResponse_ReservationResponseBuilder();
  set reservation(
          NotificationResponse_ReservationResponseBuilder reservation) =>
      _$this._reservation = reservation;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  NotificationResponseBuilder();

  NotificationResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _body = _$v.body;
      _to_user = _$v.to_user;
      _reservation = _$v.reservation?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotificationResponse;
  }

  @override
  void update(void Function(NotificationResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationResponse build() {
    _$NotificationResponse _$result;
    try {
      _$result = _$v ??
          new _$NotificationResponse._(
              id: id,
              title: title,
              body: body,
              to_user: to_user,
              reservation: reservation.build(),
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reservation';
        reservation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NotificationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NotificationResponse_ReservationResponse
    extends NotificationResponse_ReservationResponse {
  @override
  final String id;
  @override
  final String email;
  @override
  final bool is_active;
  @override
  final int original_price;
  @override
  final String phone_number;
  @override
  final BuiltList<ProductIdAndQuantity> products;
  @override
  final int total_price;
  @override
  final ShowTimeFullResponse show_time;
  @override
  final String user;
  @override
  final String payment_intent_id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$NotificationResponse_ReservationResponse(
          [void Function(NotificationResponse_ReservationResponseBuilder)
              updates]) =>
      (new NotificationResponse_ReservationResponseBuilder()..update(updates))
          .build();

  _$NotificationResponse_ReservationResponse._(
      {this.id,
      this.email,
      this.is_active,
      this.original_price,
      this.phone_number,
      this.products,
      this.total_price,
      this.show_time,
      this.user,
      this.payment_intent_id,
      this.createdAt,
      this.updatedAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError(
          'NotificationResponse_ReservationResponse', 'id');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError(
          'NotificationResponse_ReservationResponse', 'email');
    }
    if (original_price == null) {
      throw new BuiltValueNullFieldError(
          'NotificationResponse_ReservationResponse', 'original_price');
    }
    if (phone_number == null) {
      throw new BuiltValueNullFieldError(
          'NotificationResponse_ReservationResponse', 'phone_number');
    }
    if (products == null) {
      throw new BuiltValueNullFieldError(
          'NotificationResponse_ReservationResponse', 'products');
    }
    if (total_price == null) {
      throw new BuiltValueNullFieldError(
          'NotificationResponse_ReservationResponse', 'total_price');
    }
    if (show_time == null) {
      throw new BuiltValueNullFieldError(
          'NotificationResponse_ReservationResponse', 'show_time');
    }
    if (user == null) {
      throw new BuiltValueNullFieldError(
          'NotificationResponse_ReservationResponse', 'user');
    }
    if (payment_intent_id == null) {
      throw new BuiltValueNullFieldError(
          'NotificationResponse_ReservationResponse', 'payment_intent_id');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError(
          'NotificationResponse_ReservationResponse', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError(
          'NotificationResponse_ReservationResponse', 'updatedAt');
    }
  }

  @override
  NotificationResponse_ReservationResponse rebuild(
          void Function(NotificationResponse_ReservationResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationResponse_ReservationResponseBuilder toBuilder() =>
      new NotificationResponse_ReservationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationResponse_ReservationResponse &&
        id == other.id &&
        email == other.email &&
        is_active == other.is_active &&
        original_price == other.original_price &&
        phone_number == other.phone_number &&
        products == other.products &&
        total_price == other.total_price &&
        show_time == other.show_time &&
        user == other.user &&
        payment_intent_id == other.payment_intent_id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                email.hashCode),
                                            is_active.hashCode),
                                        original_price.hashCode),
                                    phone_number.hashCode),
                                products.hashCode),
                            total_price.hashCode),
                        show_time.hashCode),
                    user.hashCode),
                payment_intent_id.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'NotificationResponse_ReservationResponse')
          ..add('id', id)
          ..add('email', email)
          ..add('is_active', is_active)
          ..add('original_price', original_price)
          ..add('phone_number', phone_number)
          ..add('products', products)
          ..add('total_price', total_price)
          ..add('show_time', show_time)
          ..add('user', user)
          ..add('payment_intent_id', payment_intent_id)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class NotificationResponse_ReservationResponseBuilder
    implements
        Builder<NotificationResponse_ReservationResponse,
            NotificationResponse_ReservationResponseBuilder> {
  _$NotificationResponse_ReservationResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  bool _is_active;
  bool get is_active => _$this._is_active;
  set is_active(bool is_active) => _$this._is_active = is_active;

  int _original_price;
  int get original_price => _$this._original_price;
  set original_price(int original_price) =>
      _$this._original_price = original_price;

  String _phone_number;
  String get phone_number => _$this._phone_number;
  set phone_number(String phone_number) => _$this._phone_number = phone_number;

  ListBuilder<ProductIdAndQuantity> _products;
  ListBuilder<ProductIdAndQuantity> get products =>
      _$this._products ??= new ListBuilder<ProductIdAndQuantity>();
  set products(ListBuilder<ProductIdAndQuantity> products) =>
      _$this._products = products;

  int _total_price;
  int get total_price => _$this._total_price;
  set total_price(int total_price) => _$this._total_price = total_price;

  ShowTimeFullResponseBuilder _show_time;
  ShowTimeFullResponseBuilder get show_time =>
      _$this._show_time ??= new ShowTimeFullResponseBuilder();
  set show_time(ShowTimeFullResponseBuilder show_time) =>
      _$this._show_time = show_time;

  String _user;
  String get user => _$this._user;
  set user(String user) => _$this._user = user;

  String _payment_intent_id;
  String get payment_intent_id => _$this._payment_intent_id;
  set payment_intent_id(String payment_intent_id) =>
      _$this._payment_intent_id = payment_intent_id;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  NotificationResponse_ReservationResponseBuilder();

  NotificationResponse_ReservationResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _email = _$v.email;
      _is_active = _$v.is_active;
      _original_price = _$v.original_price;
      _phone_number = _$v.phone_number;
      _products = _$v.products?.toBuilder();
      _total_price = _$v.total_price;
      _show_time = _$v.show_time?.toBuilder();
      _user = _$v.user;
      _payment_intent_id = _$v.payment_intent_id;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationResponse_ReservationResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotificationResponse_ReservationResponse;
  }

  @override
  void update(
      void Function(NotificationResponse_ReservationResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationResponse_ReservationResponse build() {
    _$NotificationResponse_ReservationResponse _$result;
    try {
      _$result = _$v ??
          new _$NotificationResponse_ReservationResponse._(
              id: id,
              email: email,
              is_active: is_active,
              original_price: original_price,
              phone_number: phone_number,
              products: products.build(),
              total_price: total_price,
              show_time: show_time.build(),
              user: user,
              payment_intent_id: payment_intent_id,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        products.build();

        _$failedField = 'show_time';
        show_time.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NotificationResponse_ReservationResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
