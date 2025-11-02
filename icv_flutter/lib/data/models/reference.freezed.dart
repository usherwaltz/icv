// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Reference {
  String get name;
  String get relationship; // e.g., "Former Manager", "Professor"
  String? get company;
  String? get email;
  String? get phone;

  /// Create a copy of Reference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<Reference> get copyWith =>
      _$ReferenceCopyWithImpl<Reference>(this as Reference, _$identity);

  /// Serializes this Reference to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Reference &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, relationship, company, email, phone);

  @override
  String toString() {
    return 'Reference(name: $name, relationship: $relationship, company: $company, email: $email, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $ReferenceCopyWith<$Res> {
  factory $ReferenceCopyWith(Reference value, $Res Function(Reference) _then) =
      _$ReferenceCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String relationship,
      String? company,
      String? email,
      String? phone});
}

/// @nodoc
class _$ReferenceCopyWithImpl<$Res> implements $ReferenceCopyWith<$Res> {
  _$ReferenceCopyWithImpl(this._self, this._then);

  final Reference _self;
  final $Res Function(Reference) _then;

  /// Create a copy of Reference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? relationship = null,
    Object? company = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _self.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _self.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Reference].
extension ReferencePatterns on Reference {
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
    TResult Function(_Reference value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Reference() when $default != null:
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
    TResult Function(_Reference value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Reference():
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
    TResult? Function(_Reference value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Reference() when $default != null:
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
    TResult Function(String name, String relationship, String? company,
            String? email, String? phone)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Reference() when $default != null:
        return $default(_that.name, _that.relationship, _that.company,
            _that.email, _that.phone);
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
    TResult Function(String name, String relationship, String? company,
            String? email, String? phone)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Reference():
        return $default(_that.name, _that.relationship, _that.company,
            _that.email, _that.phone);
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
    TResult? Function(String name, String relationship, String? company,
            String? email, String? phone)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Reference() when $default != null:
        return $default(_that.name, _that.relationship, _that.company,
            _that.email, _that.phone);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Reference implements Reference {
  const _Reference(
      {required this.name,
      required this.relationship,
      this.company,
      this.email,
      this.phone});
  factory _Reference.fromJson(Map<String, dynamic> json) =>
      _$ReferenceFromJson(json);

  @override
  final String name;
  @override
  final String relationship;
// e.g., "Former Manager", "Professor"
  @override
  final String? company;
  @override
  final String? email;
  @override
  final String? phone;

  /// Create a copy of Reference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReferenceCopyWith<_Reference> get copyWith =>
      __$ReferenceCopyWithImpl<_Reference>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReferenceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reference &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, relationship, company, email, phone);

  @override
  String toString() {
    return 'Reference(name: $name, relationship: $relationship, company: $company, email: $email, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$ReferenceCopyWith<$Res>
    implements $ReferenceCopyWith<$Res> {
  factory _$ReferenceCopyWith(
          _Reference value, $Res Function(_Reference) _then) =
      __$ReferenceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String relationship,
      String? company,
      String? email,
      String? phone});
}

/// @nodoc
class __$ReferenceCopyWithImpl<$Res> implements _$ReferenceCopyWith<$Res> {
  __$ReferenceCopyWithImpl(this._self, this._then);

  final _Reference _self;
  final $Res Function(_Reference) _then;

  /// Create a copy of Reference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? relationship = null,
    Object? company = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_Reference(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _self.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _self.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
