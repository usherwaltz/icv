// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Education {
  String get degree;
  String get institution;
  String get location;
  DateTime get startDate;
  DateTime? get endDate;
  bool get isCurrentlyEnrolled;
  String? get fieldOfStudy;
  String? get grade;
  String? get description;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EducationCopyWith<Education> get copyWith =>
      _$EducationCopyWithImpl<Education>(this as Education, _$identity);

  /// Serializes this Education to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Education &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isCurrentlyEnrolled, isCurrentlyEnrolled) ||
                other.isCurrentlyEnrolled == isCurrentlyEnrolled) &&
            (identical(other.fieldOfStudy, fieldOfStudy) ||
                other.fieldOfStudy == fieldOfStudy) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      degree,
      institution,
      location,
      startDate,
      endDate,
      isCurrentlyEnrolled,
      fieldOfStudy,
      grade,
      description);

  @override
  String toString() {
    return 'Education(degree: $degree, institution: $institution, location: $location, startDate: $startDate, endDate: $endDate, isCurrentlyEnrolled: $isCurrentlyEnrolled, fieldOfStudy: $fieldOfStudy, grade: $grade, description: $description)';
  }
}

/// @nodoc
abstract mixin class $EducationCopyWith<$Res> {
  factory $EducationCopyWith(Education value, $Res Function(Education) _then) =
      _$EducationCopyWithImpl;
  @useResult
  $Res call(
      {String degree,
      String institution,
      String location,
      DateTime startDate,
      DateTime? endDate,
      bool isCurrentlyEnrolled,
      String? fieldOfStudy,
      String? grade,
      String? description});
}

/// @nodoc
class _$EducationCopyWithImpl<$Res> implements $EducationCopyWith<$Res> {
  _$EducationCopyWithImpl(this._self, this._then);

  final Education _self;
  final $Res Function(Education) _then;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? degree = null,
    Object? institution = null,
    Object? location = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isCurrentlyEnrolled = null,
    Object? fieldOfStudy = freezed,
    Object? grade = freezed,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      degree: null == degree
          ? _self.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _self.institution
          : institution // ignore: cast_nullable_to_non_nullable
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
      isCurrentlyEnrolled: null == isCurrentlyEnrolled
          ? _self.isCurrentlyEnrolled
          : isCurrentlyEnrolled // ignore: cast_nullable_to_non_nullable
              as bool,
      fieldOfStudy: freezed == fieldOfStudy
          ? _self.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _self.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Education].
extension EducationPatterns on Education {
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
    TResult Function(_Education value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Education() when $default != null:
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
    TResult Function(_Education value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Education():
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
    TResult? Function(_Education value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Education() when $default != null:
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
            String degree,
            String institution,
            String location,
            DateTime startDate,
            DateTime? endDate,
            bool isCurrentlyEnrolled,
            String? fieldOfStudy,
            String? grade,
            String? description)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Education() when $default != null:
        return $default(
            _that.degree,
            _that.institution,
            _that.location,
            _that.startDate,
            _that.endDate,
            _that.isCurrentlyEnrolled,
            _that.fieldOfStudy,
            _that.grade,
            _that.description);
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
            String degree,
            String institution,
            String location,
            DateTime startDate,
            DateTime? endDate,
            bool isCurrentlyEnrolled,
            String? fieldOfStudy,
            String? grade,
            String? description)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Education():
        return $default(
            _that.degree,
            _that.institution,
            _that.location,
            _that.startDate,
            _that.endDate,
            _that.isCurrentlyEnrolled,
            _that.fieldOfStudy,
            _that.grade,
            _that.description);
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
            String degree,
            String institution,
            String location,
            DateTime startDate,
            DateTime? endDate,
            bool isCurrentlyEnrolled,
            String? fieldOfStudy,
            String? grade,
            String? description)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Education() when $default != null:
        return $default(
            _that.degree,
            _that.institution,
            _that.location,
            _that.startDate,
            _that.endDate,
            _that.isCurrentlyEnrolled,
            _that.fieldOfStudy,
            _that.grade,
            _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Education implements Education {
  const _Education(
      {required this.degree,
      required this.institution,
      required this.location,
      required this.startDate,
      this.endDate,
      this.isCurrentlyEnrolled = false,
      this.fieldOfStudy,
      this.grade,
      this.description});
  factory _Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);

  @override
  final String degree;
  @override
  final String institution;
  @override
  final String location;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final bool isCurrentlyEnrolled;
  @override
  final String? fieldOfStudy;
  @override
  final String? grade;
  @override
  final String? description;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EducationCopyWith<_Education> get copyWith =>
      __$EducationCopyWithImpl<_Education>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EducationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Education &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isCurrentlyEnrolled, isCurrentlyEnrolled) ||
                other.isCurrentlyEnrolled == isCurrentlyEnrolled) &&
            (identical(other.fieldOfStudy, fieldOfStudy) ||
                other.fieldOfStudy == fieldOfStudy) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      degree,
      institution,
      location,
      startDate,
      endDate,
      isCurrentlyEnrolled,
      fieldOfStudy,
      grade,
      description);

  @override
  String toString() {
    return 'Education(degree: $degree, institution: $institution, location: $location, startDate: $startDate, endDate: $endDate, isCurrentlyEnrolled: $isCurrentlyEnrolled, fieldOfStudy: $fieldOfStudy, grade: $grade, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$EducationCopyWith<$Res>
    implements $EducationCopyWith<$Res> {
  factory _$EducationCopyWith(
          _Education value, $Res Function(_Education) _then) =
      __$EducationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String degree,
      String institution,
      String location,
      DateTime startDate,
      DateTime? endDate,
      bool isCurrentlyEnrolled,
      String? fieldOfStudy,
      String? grade,
      String? description});
}

/// @nodoc
class __$EducationCopyWithImpl<$Res> implements _$EducationCopyWith<$Res> {
  __$EducationCopyWithImpl(this._self, this._then);

  final _Education _self;
  final $Res Function(_Education) _then;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? degree = null,
    Object? institution = null,
    Object? location = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isCurrentlyEnrolled = null,
    Object? fieldOfStudy = freezed,
    Object? grade = freezed,
    Object? description = freezed,
  }) {
    return _then(_Education(
      degree: null == degree
          ? _self.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _self.institution
          : institution // ignore: cast_nullable_to_non_nullable
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
      isCurrentlyEnrolled: null == isCurrentlyEnrolled
          ? _self.isCurrentlyEnrolled
          : isCurrentlyEnrolled // ignore: cast_nullable_to_non_nullable
              as bool,
      fieldOfStudy: freezed == fieldOfStudy
          ? _self.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _self.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
