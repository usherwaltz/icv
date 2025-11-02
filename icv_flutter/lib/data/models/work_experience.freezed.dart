// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_experience.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkExperience {
  String get jobTitle;
  String get company;
  String get location;
  DateTime get startDate;
  DateTime? get endDate;
  bool get isCurrentPosition;
  String? get description;
  List<String> get achievements;

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkExperienceCopyWith<WorkExperience> get copyWith =>
      _$WorkExperienceCopyWithImpl<WorkExperience>(
          this as WorkExperience, _$identity);

  /// Serializes this WorkExperience to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkExperience &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isCurrentPosition, isCurrentPosition) ||
                other.isCurrentPosition == isCurrentPosition) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.achievements, achievements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      jobTitle,
      company,
      location,
      startDate,
      endDate,
      isCurrentPosition,
      description,
      const DeepCollectionEquality().hash(achievements));

  @override
  String toString() {
    return 'WorkExperience(jobTitle: $jobTitle, company: $company, location: $location, startDate: $startDate, endDate: $endDate, isCurrentPosition: $isCurrentPosition, description: $description, achievements: $achievements)';
  }
}

/// @nodoc
abstract mixin class $WorkExperienceCopyWith<$Res> {
  factory $WorkExperienceCopyWith(
          WorkExperience value, $Res Function(WorkExperience) _then) =
      _$WorkExperienceCopyWithImpl;
  @useResult
  $Res call(
      {String jobTitle,
      String company,
      String location,
      DateTime startDate,
      DateTime? endDate,
      bool isCurrentPosition,
      String? description,
      List<String> achievements});
}

/// @nodoc
class _$WorkExperienceCopyWithImpl<$Res>
    implements $WorkExperienceCopyWith<$Res> {
  _$WorkExperienceCopyWithImpl(this._self, this._then);

  final WorkExperience _self;
  final $Res Function(WorkExperience) _then;

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTitle = null,
    Object? company = null,
    Object? location = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isCurrentPosition = null,
    Object? description = freezed,
    Object? achievements = null,
  }) {
    return _then(_self.copyWith(
      jobTitle: null == jobTitle
          ? _self.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _self.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCurrentPosition: null == isCurrentPosition
          ? _self.isCurrentPosition
          : isCurrentPosition // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      achievements: null == achievements
          ? _self.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [WorkExperience].
extension WorkExperiencePatterns on WorkExperience {
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
    TResult Function(_WorkExperience value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkExperience() when $default != null:
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
    TResult Function(_WorkExperience value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkExperience():
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
    TResult? Function(_WorkExperience value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkExperience() when $default != null:
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
            String jobTitle,
            String company,
            String location,
            DateTime startDate,
            DateTime? endDate,
            bool isCurrentPosition,
            String? description,
            List<String> achievements)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkExperience() when $default != null:
        return $default(
            _that.jobTitle,
            _that.company,
            _that.location,
            _that.startDate,
            _that.endDate,
            _that.isCurrentPosition,
            _that.description,
            _that.achievements);
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
            String jobTitle,
            String company,
            String location,
            DateTime startDate,
            DateTime? endDate,
            bool isCurrentPosition,
            String? description,
            List<String> achievements)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkExperience():
        return $default(
            _that.jobTitle,
            _that.company,
            _that.location,
            _that.startDate,
            _that.endDate,
            _that.isCurrentPosition,
            _that.description,
            _that.achievements);
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
            String jobTitle,
            String company,
            String location,
            DateTime startDate,
            DateTime? endDate,
            bool isCurrentPosition,
            String? description,
            List<String> achievements)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkExperience() when $default != null:
        return $default(
            _that.jobTitle,
            _that.company,
            _that.location,
            _that.startDate,
            _that.endDate,
            _that.isCurrentPosition,
            _that.description,
            _that.achievements);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WorkExperience implements WorkExperience {
  const _WorkExperience(
      {required this.jobTitle,
      required this.company,
      required this.location,
      required this.startDate,
      this.endDate,
      this.isCurrentPosition = false,
      this.description,
      final List<String> achievements = const <String>[]})
      : _achievements = achievements;
  factory _WorkExperience.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceFromJson(json);

  @override
  final String jobTitle;
  @override
  final String company;
  @override
  final String location;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final bool isCurrentPosition;
  @override
  final String? description;
  final List<String> _achievements;
  @override
  @JsonKey()
  List<String> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkExperienceCopyWith<_WorkExperience> get copyWith =>
      __$WorkExperienceCopyWithImpl<_WorkExperience>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkExperienceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkExperience &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isCurrentPosition, isCurrentPosition) ||
                other.isCurrentPosition == isCurrentPosition) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      jobTitle,
      company,
      location,
      startDate,
      endDate,
      isCurrentPosition,
      description,
      const DeepCollectionEquality().hash(_achievements));

  @override
  String toString() {
    return 'WorkExperience(jobTitle: $jobTitle, company: $company, location: $location, startDate: $startDate, endDate: $endDate, isCurrentPosition: $isCurrentPosition, description: $description, achievements: $achievements)';
  }
}

/// @nodoc
abstract mixin class _$WorkExperienceCopyWith<$Res>
    implements $WorkExperienceCopyWith<$Res> {
  factory _$WorkExperienceCopyWith(
          _WorkExperience value, $Res Function(_WorkExperience) _then) =
      __$WorkExperienceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String jobTitle,
      String company,
      String location,
      DateTime startDate,
      DateTime? endDate,
      bool isCurrentPosition,
      String? description,
      List<String> achievements});
}

/// @nodoc
class __$WorkExperienceCopyWithImpl<$Res>
    implements _$WorkExperienceCopyWith<$Res> {
  __$WorkExperienceCopyWithImpl(this._self, this._then);

  final _WorkExperience _self;
  final $Res Function(_WorkExperience) _then;

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jobTitle = null,
    Object? company = null,
    Object? location = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isCurrentPosition = null,
    Object? description = freezed,
    Object? achievements = null,
  }) {
    return _then(_WorkExperience(
      jobTitle: null == jobTitle
          ? _self.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _self.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCurrentPosition: null == isCurrentPosition
          ? _self.isCurrentPosition
          : isCurrentPosition // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      achievements: null == achievements
          ? _self._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
