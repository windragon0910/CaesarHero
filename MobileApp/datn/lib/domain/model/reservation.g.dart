// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Reservation extends Reservation {
  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final String email;
  @override
  final bool isActive;
  @override
  final int originalPrice;
  @override
  final String paymentIntentId;
  @override
  final String phoneNumber;
  @override
  final BuiltList<Tuple2<String, int>> productIdWithCounts;
  @override
  final String showTimeId;
  @override
  final ShowTime showTime;
  @override
  final int totalPrice;
  @override
  final DateTime updatedAt;
  @override
  final User user;

  factory _$Reservation([void Function(ReservationBuilder) updates]) =>
      (new ReservationBuilder()..update(updates)).build();

  _$Reservation._(
      {this.id,
      this.createdAt,
      this.email,
      this.isActive,
      this.originalPrice,
      this.paymentIntentId,
      this.phoneNumber,
      this.productIdWithCounts,
      this.showTimeId,
      this.showTime,
      this.totalPrice,
      this.updatedAt,
      this.user})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Reservation', 'id');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Reservation', 'createdAt');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('Reservation', 'email');
    }
    if (isActive == null) {
      throw new BuiltValueNullFieldError('Reservation', 'isActive');
    }
    if (originalPrice == null) {
      throw new BuiltValueNullFieldError('Reservation', 'originalPrice');
    }
    if (paymentIntentId == null) {
      throw new BuiltValueNullFieldError('Reservation', 'paymentIntentId');
    }
    if (phoneNumber == null) {
      throw new BuiltValueNullFieldError('Reservation', 'phoneNumber');
    }
    if (productIdWithCounts == null) {
      throw new BuiltValueNullFieldError('Reservation', 'productIdWithCounts');
    }
    if (showTimeId == null) {
      throw new BuiltValueNullFieldError('Reservation', 'showTimeId');
    }
    if (totalPrice == null) {
      throw new BuiltValueNullFieldError('Reservation', 'totalPrice');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('Reservation', 'updatedAt');
    }
  }

  @override
  Reservation rebuild(void Function(ReservationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservationBuilder toBuilder() => new ReservationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Reservation &&
        id == other.id &&
        createdAt == other.createdAt &&
        email == other.email &&
        isActive == other.isActive &&
        originalPrice == other.originalPrice &&
        paymentIntentId == other.paymentIntentId &&
        phoneNumber == other.phoneNumber &&
        productIdWithCounts == other.productIdWithCounts &&
        showTimeId == other.showTimeId &&
        showTime == other.showTime &&
        totalPrice == other.totalPrice &&
        updatedAt == other.updatedAt &&
        user == other.user;
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
                                            $jc(
                                                $jc($jc(0, id.hashCode),
                                                    createdAt.hashCode),
                                                email.hashCode),
                                            isActive.hashCode),
                                        originalPrice.hashCode),
                                    paymentIntentId.hashCode),
                                phoneNumber.hashCode),
                            productIdWithCounts.hashCode),
                        showTimeId.hashCode),
                    showTime.hashCode),
                totalPrice.hashCode),
            updatedAt.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Reservation')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('email', email)
          ..add('isActive', isActive)
          ..add('originalPrice', originalPrice)
          ..add('paymentIntentId', paymentIntentId)
          ..add('phoneNumber', phoneNumber)
          ..add('productIdWithCounts', productIdWithCounts)
          ..add('showTimeId', showTimeId)
          ..add('showTime', showTime)
          ..add('totalPrice', totalPrice)
          ..add('updatedAt', updatedAt)
          ..add('user', user))
        .toString();
  }
}

class ReservationBuilder implements Builder<Reservation, ReservationBuilder> {
  _$Reservation _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  int _originalPrice;
  int get originalPrice => _$this._originalPrice;
  set originalPrice(int originalPrice) => _$this._originalPrice = originalPrice;

  String _paymentIntentId;
  String get paymentIntentId => _$this._paymentIntentId;
  set paymentIntentId(String paymentIntentId) =>
      _$this._paymentIntentId = paymentIntentId;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  ListBuilder<Tuple2<String, int>> _productIdWithCounts;
  ListBuilder<Tuple2<String, int>> get productIdWithCounts =>
      _$this._productIdWithCounts ??= new ListBuilder<Tuple2<String, int>>();
  set productIdWithCounts(
          ListBuilder<Tuple2<String, int>> productIdWithCounts) =>
      _$this._productIdWithCounts = productIdWithCounts;

  String _showTimeId;
  String get showTimeId => _$this._showTimeId;
  set showTimeId(String showTimeId) => _$this._showTimeId = showTimeId;

  ShowTimeBuilder _showTime;
  ShowTimeBuilder get showTime => _$this._showTime ??= new ShowTimeBuilder();
  set showTime(ShowTimeBuilder showTime) => _$this._showTime = showTime;

  int _totalPrice;
  int get totalPrice => _$this._totalPrice;
  set totalPrice(int totalPrice) => _$this._totalPrice = totalPrice;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  ReservationBuilder();

  ReservationBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _createdAt = _$v.createdAt;
      _email = _$v.email;
      _isActive = _$v.isActive;
      _originalPrice = _$v.originalPrice;
      _paymentIntentId = _$v.paymentIntentId;
      _phoneNumber = _$v.phoneNumber;
      _productIdWithCounts = _$v.productIdWithCounts?.toBuilder();
      _showTimeId = _$v.showTimeId;
      _showTime = _$v.showTime?.toBuilder();
      _totalPrice = _$v.totalPrice;
      _updatedAt = _$v.updatedAt;
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Reservation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Reservation;
  }

  @override
  void update(void Function(ReservationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Reservation build() {
    _$Reservation _$result;
    try {
      _$result = _$v ??
          new _$Reservation._(
              id: id,
              createdAt: createdAt,
              email: email,
              isActive: isActive,
              originalPrice: originalPrice,
              paymentIntentId: paymentIntentId,
              phoneNumber: phoneNumber,
              productIdWithCounts: productIdWithCounts.build(),
              showTimeId: showTimeId,
              showTime: _showTime?.build(),
              totalPrice: totalPrice,
              updatedAt: updatedAt,
              user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'productIdWithCounts';
        productIdWithCounts.build();

        _$failedField = 'showTime';
        _showTime?.build();

        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Reservation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
