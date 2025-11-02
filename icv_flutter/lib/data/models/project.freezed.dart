// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Project {
  String get name;
  String? get description;
  String? get technologies;
  String? get url;
  String? get githubUrl;
  DateTime? get startDate;
  DateTime? get endDate;
  bool get isOngoing;
  List<String> get highlights;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<Project> get copyWith =>
      _$ProjectCopyWithImpl<Project>(this as Project, _$identity);

  /// Serializes this Project to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Project &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.technologies, technologies) ||
                other.technologies == technologies) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isOngoing, isOngoing) ||
                other.isOngoing == isOngoing) &&
            const DeepCollectionEquality()
                .equals(other.highlights, highlights));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      technologies,
      url,
      githubUrl,
      startDate,
      endDate,
      isOngoing,
      const DeepCollectionEquality().hash(highlights));

  @override
  String toString() {
    return 'Project(name: $name, description: $description, technologies: $technologies, url: $url, githubUrl: $githubUrl, startDate: $startDate, endDate: $endDate, isOngoing: $isOngoing, highlights: $highlights)';
  }
}

/// @nodoc
abstract mixin class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) _then) =
      _$ProjectCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String? description,
      String? technologies,
      String? url,
      String? githubUrl,
      DateTime? startDate,
      DateTime? endDate,
      bool isOngoing,
      List<String> highlights});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._self, this._then);

  final Project _self;
  final $Res Function(Project) _then;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? technologies = freezed,
    Object? url = freezed,
    Object? githubUrl = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isOngoing = null,
    Object? highlights = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      technologies: freezed == technologies
          ? _self.technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: freezed == githubUrl
          ? _self.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isOngoing: null == isOngoing
          ? _self.isOngoing
          : isOngoing // ignore: cast_nullable_to_non_nullable
              as bool,
      highlights: null == highlights
          ? _self.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [Project].
extension ProjectPatterns on Project {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Project value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Project() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Project value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Project():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Project value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Project() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String name,
            String? description,
            String? technologies,
            String? url,
            String? githubUrl,
            DateTime? startDate,
            DateTime? endDate,
            bool isOngoing,
            List<String> highlights)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Project() when $default != null:
        return $default(
            _that.name,
            _that.description,
            _that.technologies,
            _that.url,
            _that.githubUrl,
            _that.startDate,
            _that.endDate,
            _that.isOngoing,
            _that.highlights);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String name,
            String? description,
            String? technologies,
            String? url,
            String? githubUrl,
            DateTime? startDate,
            DateTime? endDate,
            bool isOngoing,
            List<String> highlights)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Project():
        return $default(
            _that.name,
            _that.description,
            _that.technologies,
            _that.url,
            _that.githubUrl,
            _that.startDate,
            _that.endDate,
            _that.isOngoing,
            _that.highlights);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String name,
            String? description,
            String? technologies,
            String? url,
            String? githubUrl,
            DateTime? startDate,
            DateTime? endDate,
            bool isOngoing,
            List<String> highlights)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Project() when $default != null:
        return $default(
            _that.name,
            _that.description,
            _that.technologies,
            _that.url,
            _that.githubUrl,
            _that.startDate,
            _that.endDate,
            _that.isOngoing,
            _that.highlights);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Project implements Project {
  const _Project(
      {required this.name,
      this.description,
      this.technologies,
      this.url,
      this.githubUrl,
      this.startDate,
      this.endDate,
      this.isOngoing = false,
      final List<String> highlights = const <String>[]})
      : _highlights = highlights;
  factory _Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String? technologies;
  @override
  final String? url;
  @override
  final String? githubUrl;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final bool isOngoing;
  final List<String> _highlights;
  @override
  @JsonKey()
  List<String> get highlights {
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlights);
  }

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProjectCopyWith<_Project> get copyWith =>
      __$ProjectCopyWithImpl<_Project>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProjectToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Project &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.technologies, technologies) ||
                other.technologies == technologies) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isOngoing, isOngoing) ||
                other.isOngoing == isOngoing) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      technologies,
      url,
      githubUrl,
      startDate,
      endDate,
      isOngoing,
      const DeepCollectionEquality().hash(_highlights));

  @override
  String toString() {
    return 'Project(name: $name, description: $description, technologies: $technologies, url: $url, githubUrl: $githubUrl, startDate: $startDate, endDate: $endDate, isOngoing: $isOngoing, highlights: $highlights)';
  }
}

/// @nodoc
abstract mixin class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) _then) =
      __$ProjectCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      String? technologies,
      String? url,
      String? githubUrl,
      DateTime? startDate,
      DateTime? endDate,
      bool isOngoing,
      List<String> highlights});
}

/// @nodoc
class __$ProjectCopyWithImpl<$Res> implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(this._self, this._then);

  final _Project _self;
  final $Res Function(_Project) _then;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? technologies = freezed,
    Object? url = freezed,
    Object? githubUrl = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isOngoing = null,
    Object? highlights = null,
  }) {
    return _then(_Project(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      technologies: freezed == technologies
          ? _self.technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: freezed == githubUrl
          ? _self.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isOngoing: null == isOngoing
          ? _self.isOngoing
          : isOngoing // ignore: cast_nullable_to_non_nullable
              as bool,
      highlights: null == highlights
          ? _self._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
