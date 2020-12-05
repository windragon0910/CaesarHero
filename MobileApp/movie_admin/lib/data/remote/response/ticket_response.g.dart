// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TicketResponse> _$ticketResponseSerializer =
    new _$TicketResponseSerializer();

class _$TicketResponseSerializer
    implements StructuredSerializer<TicketResponse> {
  @override
  final Iterable<Type> types = const [TicketResponse, _$TicketResponse];
  @override
  final String wireName = 'TicketResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, TicketResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price, specifiedType: const FullType(int)),
      'seat',
      serializers.serialize(object.seat,
          specifiedType: const FullType(SeatResponse)),
      'show_time',
      serializers.serialize(object.show_time,
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
    if (object.reservation != null) {
      result
        ..add('reservation')
        ..add(serializers.serialize(object.reservation,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TicketResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TicketResponseBuilder();

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
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reservation':
          result.reservation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'seat':
          result.seat.replace(serializers.deserialize(value,
              specifiedType: const FullType(SeatResponse)) as SeatResponse);
          break;
        case 'show_time':
          result.show_time = serializers.deserialize(value,
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

class _$TicketResponse extends TicketResponse {
  @override
  final String id;
  @override
  final bool is_active;
  @override
  final int price;
  @override
  final String reservation;
  @override
  final SeatResponse seat;
  @override
  final String show_time;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$TicketResponse([void Function(TicketResponseBuilder) updates]) =>
      (new TicketResponseBuilder()..update(updates)).build();

  _$TicketResponse._(
      {this.id,
      this.is_active,
      this.price,
      this.reservation,
      this.seat,
      this.show_time,
      this.createdAt,
      this.updatedAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('TicketResponse', 'id');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('TicketResponse', 'price');
    }
    if (seat == null) {
      throw new BuiltValueNullFieldError('TicketResponse', 'seat');
    }
    if (show_time == null) {
      throw new BuiltValueNullFieldError('TicketResponse', 'show_time');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('TicketResponse', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('TicketResponse', 'updatedAt');
    }
  }

  @override
  TicketResponse rebuild(void Function(TicketResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TicketResponseBuilder toBuilder() =>
      new TicketResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TicketResponse &&
        id == other.id &&
        is_active == other.is_active &&
        price == other.price &&
        reservation == other.reservation &&
        seat == other.seat &&
        show_time == other.show_time &&
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
                        $jc($jc($jc(0, id.hashCode), is_active.hashCode),
                            price.hashCode),
                        reservation.hashCode),
                    seat.hashCode),
                show_time.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TicketResponse')
          ..add('id', id)
          ..add('is_active', is_active)
          ..add('price', price)
          ..add('reservation', reservation)
          ..add('seat', seat)
          ..add('show_time', show_time)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TicketResponseBuilder
    implements Builder<TicketResponse, TicketResponseBuilder> {
  _$TicketResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _is_active;
  bool get is_active => _$this._is_active;
  set is_active(bool is_active) => _$this._is_active = is_active;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  String _reservation;
  String get reservation => _$this._reservation;
  set reservation(String reservation) => _$this._reservation = reservation;

  SeatResponseBuilder _seat;
  SeatResponseBuilder get seat => _$this._seat ??= new SeatResponseBuilder();
  set seat(SeatResponseBuilder seat) => _$this._seat = seat;

  String _show_time;
  String get show_time => _$this._show_time;
  set show_time(String show_time) => _$this._show_time = show_time;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  TicketResponseBuilder();

  TicketResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _is_active = _$v.is_active;
      _price = _$v.price;
      _reservation = _$v.reservation;
      _seat = _$v.seat?.toBuilder();
      _show_time = _$v.show_time;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TicketResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TicketResponse;
  }

  @override
  void update(void Function(TicketResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TicketResponse build() {
    _$TicketResponse _$result;
    try {
      _$result = _$v ??
          new _$TicketResponse._(
              id: id,
              is_active: is_active,
              price: price,
              reservation: reservation,
              seat: seat.build(),
              show_time: show_time,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'seat';
        seat.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TicketResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
