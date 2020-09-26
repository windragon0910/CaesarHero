// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommentResponse> _$commentResponseSerializer =
    new _$CommentResponseSerializer();

class _$CommentResponseSerializer
    implements StructuredSerializer<CommentResponse> {
  @override
  final Iterable<Type> types = const [CommentResponse, _$CommentResponse];
  @override
  final String wireName = 'CommentResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, CommentResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'rate_star',
      serializers.serialize(object.rate_star,
          specifiedType: const FullType(int)),
      'movie',
      serializers.serialize(object.movie,
          specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(UserResponse)),
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
  CommentResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentResponseBuilder();

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
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rate_star':
          result.rate_star = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'movie':
          result.movie = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserResponse)) as UserResponse);
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

class _$CommentResponse extends CommentResponse {
  @override
  final String id;
  @override
  final bool is_active;
  @override
  final String content;
  @override
  final int rate_star;
  @override
  final String movie;
  @override
  final UserResponse user;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$CommentResponse([void Function(CommentResponseBuilder) updates]) =>
      (new CommentResponseBuilder()..update(updates)).build();

  _$CommentResponse._(
      {this.id,
      this.is_active,
      this.content,
      this.rate_star,
      this.movie,
      this.user,
      this.createdAt,
      this.updatedAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('CommentResponse', 'id');
    }
    if (content == null) {
      throw new BuiltValueNullFieldError('CommentResponse', 'content');
    }
    if (rate_star == null) {
      throw new BuiltValueNullFieldError('CommentResponse', 'rate_star');
    }
    if (movie == null) {
      throw new BuiltValueNullFieldError('CommentResponse', 'movie');
    }
    if (user == null) {
      throw new BuiltValueNullFieldError('CommentResponse', 'user');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('CommentResponse', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('CommentResponse', 'updatedAt');
    }
  }

  @override
  CommentResponse rebuild(void Function(CommentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentResponseBuilder toBuilder() =>
      new CommentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentResponse &&
        id == other.id &&
        is_active == other.is_active &&
        content == other.content &&
        rate_star == other.rate_star &&
        movie == other.movie &&
        user == other.user &&
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
                            content.hashCode),
                        rate_star.hashCode),
                    movie.hashCode),
                user.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentResponse')
          ..add('id', id)
          ..add('is_active', is_active)
          ..add('content', content)
          ..add('rate_star', rate_star)
          ..add('movie', movie)
          ..add('user', user)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CommentResponseBuilder
    implements Builder<CommentResponse, CommentResponseBuilder> {
  _$CommentResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _is_active;
  bool get is_active => _$this._is_active;
  set is_active(bool is_active) => _$this._is_active = is_active;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  int _rate_star;
  int get rate_star => _$this._rate_star;
  set rate_star(int rate_star) => _$this._rate_star = rate_star;

  String _movie;
  String get movie => _$this._movie;
  set movie(String movie) => _$this._movie = movie;

  UserResponseBuilder _user;
  UserResponseBuilder get user => _$this._user ??= new UserResponseBuilder();
  set user(UserResponseBuilder user) => _$this._user = user;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  CommentResponseBuilder();

  CommentResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _is_active = _$v.is_active;
      _content = _$v.content;
      _rate_star = _$v.rate_star;
      _movie = _$v.movie;
      _user = _$v.user?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommentResponse;
  }

  @override
  void update(void Function(CommentResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentResponse build() {
    _$CommentResponse _$result;
    try {
      _$result = _$v ??
          new _$CommentResponse._(
              id: id,
              is_active: is_active,
              content: content,
              rate_star: rate_star,
              movie: movie,
              user: user.build(),
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
