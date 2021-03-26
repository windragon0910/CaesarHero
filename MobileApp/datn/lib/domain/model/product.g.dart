// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Product extends Product {
  @override
  final String id;
  @override
  final String description;
  @override
  final String image;
  @override
  final bool is_active;
  @override
  final String name;
  @override
  final int price;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Product([void Function(ProductBuilder)? updates]) =>
      (new ProductBuilder()..update(updates)).build();

  _$Product._(
      {required this.id,
      required this.description,
      required this.image,
      required this.is_active,
      required this.name,
      required this.price,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Product', 'id');
    BuiltValueNullFieldError.checkNotNull(
        description, 'Product', 'description');
    BuiltValueNullFieldError.checkNotNull(image, 'Product', 'image');
    BuiltValueNullFieldError.checkNotNull(is_active, 'Product', 'is_active');
    BuiltValueNullFieldError.checkNotNull(name, 'Product', 'name');
    BuiltValueNullFieldError.checkNotNull(price, 'Product', 'price');
    BuiltValueNullFieldError.checkNotNull(createdAt, 'Product', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(updatedAt, 'Product', 'updatedAt');
  }

  @override
  Product rebuild(void Function(ProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductBuilder toBuilder() => new ProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        id == other.id &&
        description == other.description &&
        image == other.image &&
        is_active == other.is_active &&
        name == other.name &&
        price == other.price &&
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
                        $jc($jc($jc(0, id.hashCode), description.hashCode),
                            image.hashCode),
                        is_active.hashCode),
                    name.hashCode),
                price.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Product')
          ..add('id', id)
          ..add('description', description)
          ..add('image', image)
          ..add('is_active', is_active)
          ..add('name', name)
          ..add('price', price)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ProductBuilder implements Builder<Product, ProductBuilder> {
  _$Product? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  bool? _is_active;
  bool? get is_active => _$this._is_active;
  set is_active(bool? is_active) => _$this._is_active = is_active;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ProductBuilder();

  ProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _description = $v.description;
      _image = $v.image;
      _is_active = $v.is_active;
      _name = $v.name;
      _price = $v.price;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Product other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Product;
  }

  @override
  void update(void Function(ProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Product build() {
    final _$result = _$v ??
        new _$Product._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Product', 'id'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'Product', 'description'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'Product', 'image'),
            is_active: BuiltValueNullFieldError.checkNotNull(
                is_active, 'Product', 'is_active'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'Product', 'name'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, 'Product', 'price'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, 'Product', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, 'Product', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
