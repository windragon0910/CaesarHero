// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Movie extends Movie {
  @override
  final String id;
  @override
  final bool isActive;
  @override
  final BuiltList<String> actorIds;
  @override
  final BuiltList<String> directorIds;
  @override
  final String title;
  @override
  final String trailerVideoUrl;
  @override
  final String posterUrl;
  @override
  final String overview;
  @override
  final DateTime releasedDate;
  @override
  final int duration;
  @override
  final String originalLanguage;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final AgeType ageType;
  @override
  final BuiltList<Person> actors;
  @override
  final BuiltList<Person> directors;
  @override
  final BuiltList<Category> categories;
  @override
  final double rateStar;
  @override
  final int totalFavorite;
  @override
  final int totalRate;

  factory _$Movie([void Function(MovieBuilder) updates]) =>
      (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {this.id,
      this.isActive,
      this.actorIds,
      this.directorIds,
      this.title,
      this.trailerVideoUrl,
      this.posterUrl,
      this.overview,
      this.releasedDate,
      this.duration,
      this.originalLanguage,
      this.createdAt,
      this.updatedAt,
      this.ageType,
      this.actors,
      this.directors,
      this.categories,
      this.rateStar,
      this.totalFavorite,
      this.totalRate})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Movie', 'id');
    }
    if (isActive == null) {
      throw new BuiltValueNullFieldError('Movie', 'isActive');
    }
    if (actorIds == null) {
      throw new BuiltValueNullFieldError('Movie', 'actorIds');
    }
    if (directorIds == null) {
      throw new BuiltValueNullFieldError('Movie', 'directorIds');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Movie', 'title');
    }
    if (releasedDate == null) {
      throw new BuiltValueNullFieldError('Movie', 'releasedDate');
    }
    if (duration == null) {
      throw new BuiltValueNullFieldError('Movie', 'duration');
    }
    if (originalLanguage == null) {
      throw new BuiltValueNullFieldError('Movie', 'originalLanguage');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Movie', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('Movie', 'updatedAt');
    }
    if (ageType == null) {
      throw new BuiltValueNullFieldError('Movie', 'ageType');
    }
    if (rateStar == null) {
      throw new BuiltValueNullFieldError('Movie', 'rateStar');
    }
    if (totalFavorite == null) {
      throw new BuiltValueNullFieldError('Movie', 'totalFavorite');
    }
    if (totalRate == null) {
      throw new BuiltValueNullFieldError('Movie', 'totalRate');
    }
  }

  @override
  Movie rebuild(void Function(MovieBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        id == other.id &&
        isActive == other.isActive &&
        actorIds == other.actorIds &&
        directorIds == other.directorIds &&
        title == other.title &&
        trailerVideoUrl == other.trailerVideoUrl &&
        posterUrl == other.posterUrl &&
        overview == other.overview &&
        releasedDate == other.releasedDate &&
        duration == other.duration &&
        originalLanguage == other.originalLanguage &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        ageType == other.ageType &&
        actors == other.actors &&
        directors == other.directors &&
        categories == other.categories &&
        rateStar == other.rateStar &&
        totalFavorite == other.totalFavorite &&
        totalRate == other.totalRate;
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc(0, id.hashCode),
                                                                                isActive.hashCode),
                                                                            actorIds.hashCode),
                                                                        directorIds.hashCode),
                                                                    title.hashCode),
                                                                trailerVideoUrl.hashCode),
                                                            posterUrl.hashCode),
                                                        overview.hashCode),
                                                    releasedDate.hashCode),
                                                duration.hashCode),
                                            originalLanguage.hashCode),
                                        createdAt.hashCode),
                                    updatedAt.hashCode),
                                ageType.hashCode),
                            actors.hashCode),
                        directors.hashCode),
                    categories.hashCode),
                rateStar.hashCode),
            totalFavorite.hashCode),
        totalRate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('id', id)
          ..add('isActive', isActive)
          ..add('actorIds', actorIds)
          ..add('directorIds', directorIds)
          ..add('title', title)
          ..add('trailerVideoUrl', trailerVideoUrl)
          ..add('posterUrl', posterUrl)
          ..add('overview', overview)
          ..add('releasedDate', releasedDate)
          ..add('duration', duration)
          ..add('originalLanguage', originalLanguage)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('ageType', ageType)
          ..add('actors', actors)
          ..add('directors', directors)
          ..add('categories', categories)
          ..add('rateStar', rateStar)
          ..add('totalFavorite', totalFavorite)
          ..add('totalRate', totalRate))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  ListBuilder<String> _actorIds;
  ListBuilder<String> get actorIds =>
      _$this._actorIds ??= new ListBuilder<String>();
  set actorIds(ListBuilder<String> actorIds) => _$this._actorIds = actorIds;

  ListBuilder<String> _directorIds;
  ListBuilder<String> get directorIds =>
      _$this._directorIds ??= new ListBuilder<String>();
  set directorIds(ListBuilder<String> directorIds) =>
      _$this._directorIds = directorIds;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _trailerVideoUrl;
  String get trailerVideoUrl => _$this._trailerVideoUrl;
  set trailerVideoUrl(String trailerVideoUrl) =>
      _$this._trailerVideoUrl = trailerVideoUrl;

  String _posterUrl;
  String get posterUrl => _$this._posterUrl;
  set posterUrl(String posterUrl) => _$this._posterUrl = posterUrl;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  DateTime _releasedDate;
  DateTime get releasedDate => _$this._releasedDate;
  set releasedDate(DateTime releasedDate) =>
      _$this._releasedDate = releasedDate;

  int _duration;
  int get duration => _$this._duration;
  set duration(int duration) => _$this._duration = duration;

  String _originalLanguage;
  String get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  AgeType _ageType;
  AgeType get ageType => _$this._ageType;
  set ageType(AgeType ageType) => _$this._ageType = ageType;

  ListBuilder<Person> _actors;
  ListBuilder<Person> get actors =>
      _$this._actors ??= new ListBuilder<Person>();
  set actors(ListBuilder<Person> actors) => _$this._actors = actors;

  ListBuilder<Person> _directors;
  ListBuilder<Person> get directors =>
      _$this._directors ??= new ListBuilder<Person>();
  set directors(ListBuilder<Person> directors) => _$this._directors = directors;

  ListBuilder<Category> _categories;
  ListBuilder<Category> get categories =>
      _$this._categories ??= new ListBuilder<Category>();
  set categories(ListBuilder<Category> categories) =>
      _$this._categories = categories;

  double _rateStar;
  double get rateStar => _$this._rateStar;
  set rateStar(double rateStar) => _$this._rateStar = rateStar;

  int _totalFavorite;
  int get totalFavorite => _$this._totalFavorite;
  set totalFavorite(int totalFavorite) => _$this._totalFavorite = totalFavorite;

  int _totalRate;
  int get totalRate => _$this._totalRate;
  set totalRate(int totalRate) => _$this._totalRate = totalRate;

  MovieBuilder();

  MovieBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _isActive = _$v.isActive;
      _actorIds = _$v.actorIds?.toBuilder();
      _directorIds = _$v.directorIds?.toBuilder();
      _title = _$v.title;
      _trailerVideoUrl = _$v.trailerVideoUrl;
      _posterUrl = _$v.posterUrl;
      _overview = _$v.overview;
      _releasedDate = _$v.releasedDate;
      _duration = _$v.duration;
      _originalLanguage = _$v.originalLanguage;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _ageType = _$v.ageType;
      _actors = _$v.actors?.toBuilder();
      _directors = _$v.directors?.toBuilder();
      _categories = _$v.categories?.toBuilder();
      _rateStar = _$v.rateStar;
      _totalFavorite = _$v.totalFavorite;
      _totalRate = _$v.totalRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Movie;
  }

  @override
  void update(void Function(MovieBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    _$Movie _$result;
    try {
      _$result = _$v ??
          new _$Movie._(
              id: id,
              isActive: isActive,
              actorIds: actorIds.build(),
              directorIds: directorIds.build(),
              title: title,
              trailerVideoUrl: trailerVideoUrl,
              posterUrl: posterUrl,
              overview: overview,
              releasedDate: releasedDate,
              duration: duration,
              originalLanguage: originalLanguage,
              createdAt: createdAt,
              updatedAt: updatedAt,
              ageType: ageType,
              actors: _actors?.build(),
              directors: _directors?.build(),
              categories: _categories?.build(),
              rateStar: rateStar,
              totalFavorite: totalFavorite,
              totalRate: totalRate);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'actorIds';
        actorIds.build();
        _$failedField = 'directorIds';
        directorIds.build();

        _$failedField = 'actors';
        _actors?.build();
        _$failedField = 'directors';
        _directors?.build();
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Movie', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
