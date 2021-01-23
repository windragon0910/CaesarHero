// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$City extends City {
  @override
  final String name;
  @override
  final Location location;

  factory _$City([void Function(CityBuilder) updates]) =>
      (new CityBuilder()..update(updates)).build();

  _$City._({this.name, this.location}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('City', 'name');
    }
  }

  @override
  City rebuild(void Function(CityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CityBuilder toBuilder() => new CityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    // ignore: deprecated_member_use_from_same_package
    return other is City && name == other.name && location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('City')
          ..add('name', name)
          ..add('location', location))
        .toString();
  }
}

class CityBuilder implements Builder<City, CityBuilder> {
  _$City _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LocationBuilder _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder location) => _$this._location = location;

  CityBuilder();

  CityBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _location = _$v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(City other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$City;
  }

  @override
  void update(void Function(CityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$City build() {
    _$City _$result;
    try {
      _$result = _$v ?? new _$City._(name: name, location: _location?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'City', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
