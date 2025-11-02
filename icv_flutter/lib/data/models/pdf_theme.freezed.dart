// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PdfTheme {
  PdfThemeOption get option;
  Map<String, dynamic>? get customTheme;

  /// Create a copy of PdfTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PdfThemeCopyWith<PdfTheme> get copyWith =>
      _$PdfThemeCopyWithImpl<PdfTheme>(this as PdfTheme, _$identity);

  /// Serializes this PdfTheme to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PdfTheme &&
            (identical(other.option, option) || other.option == option) &&
            const DeepCollectionEquality()
                .equals(other.customTheme, customTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, option, const DeepCollectionEquality().hash(customTheme));

  @override
  String toString() {
    return 'PdfTheme(option: $option, customTheme: $customTheme)';
  }
}

/// @nodoc
abstract mixin class $PdfThemeCopyWith<$Res> {
  factory $PdfThemeCopyWith(PdfTheme value, $Res Function(PdfTheme) _then) =
      _$PdfThemeCopyWithImpl;
  @useResult
  $Res call({PdfThemeOption option, Map<String, dynamic>? customTheme});

  $PdfThemeOptionCopyWith<$Res> get option;
}

/// @nodoc
class _$PdfThemeCopyWithImpl<$Res> implements $PdfThemeCopyWith<$Res> {
  _$PdfThemeCopyWithImpl(this._self, this._then);

  final PdfTheme _self;
  final $Res Function(PdfTheme) _then;

  /// Create a copy of PdfTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
    Object? customTheme = freezed,
  }) {
    return _then(_self.copyWith(
      option: null == option
          ? _self.option
          : option // ignore: cast_nullable_to_non_nullable
              as PdfThemeOption,
      customTheme: freezed == customTheme
          ? _self.customTheme
          : customTheme // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of PdfTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PdfThemeOptionCopyWith<$Res> get option {
    return $PdfThemeOptionCopyWith<$Res>(_self.option, (value) {
      return _then(_self.copyWith(option: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PdfTheme].
extension PdfThemePatterns on PdfTheme {
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
    TResult Function(_PdfTheme value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PdfTheme() when $default != null:
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
    TResult Function(_PdfTheme value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PdfTheme():
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
    TResult? Function(_PdfTheme value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PdfTheme() when $default != null:
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
    TResult Function(PdfThemeOption option, Map<String, dynamic>? customTheme)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PdfTheme() when $default != null:
        return $default(_that.option, _that.customTheme);
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
    TResult Function(PdfThemeOption option, Map<String, dynamic>? customTheme)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PdfTheme():
        return $default(_that.option, _that.customTheme);
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
    TResult? Function(PdfThemeOption option, Map<String, dynamic>? customTheme)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PdfTheme() when $default != null:
        return $default(_that.option, _that.customTheme);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PdfTheme implements PdfTheme {
  const _PdfTheme(
      {required this.option, final Map<String, dynamic>? customTheme})
      : _customTheme = customTheme;
  factory _PdfTheme.fromJson(Map<String, dynamic> json) =>
      _$PdfThemeFromJson(json);

  @override
  final PdfThemeOption option;
  final Map<String, dynamic>? _customTheme;
  @override
  Map<String, dynamic>? get customTheme {
    final value = _customTheme;
    if (value == null) return null;
    if (_customTheme is EqualUnmodifiableMapView) return _customTheme;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of PdfTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PdfThemeCopyWith<_PdfTheme> get copyWith =>
      __$PdfThemeCopyWithImpl<_PdfTheme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PdfThemeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PdfTheme &&
            (identical(other.option, option) || other.option == option) &&
            const DeepCollectionEquality()
                .equals(other._customTheme, _customTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, option, const DeepCollectionEquality().hash(_customTheme));

  @override
  String toString() {
    return 'PdfTheme(option: $option, customTheme: $customTheme)';
  }
}

/// @nodoc
abstract mixin class _$PdfThemeCopyWith<$Res>
    implements $PdfThemeCopyWith<$Res> {
  factory _$PdfThemeCopyWith(_PdfTheme value, $Res Function(_PdfTheme) _then) =
      __$PdfThemeCopyWithImpl;
  @override
  @useResult
  $Res call({PdfThemeOption option, Map<String, dynamic>? customTheme});

  @override
  $PdfThemeOptionCopyWith<$Res> get option;
}

/// @nodoc
class __$PdfThemeCopyWithImpl<$Res> implements _$PdfThemeCopyWith<$Res> {
  __$PdfThemeCopyWithImpl(this._self, this._then);

  final _PdfTheme _self;
  final $Res Function(_PdfTheme) _then;

  /// Create a copy of PdfTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? option = null,
    Object? customTheme = freezed,
  }) {
    return _then(_PdfTheme(
      option: null == option
          ? _self.option
          : option // ignore: cast_nullable_to_non_nullable
              as PdfThemeOption,
      customTheme: freezed == customTheme
          ? _self._customTheme
          : customTheme // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of PdfTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PdfThemeOptionCopyWith<$Res> get option {
    return $PdfThemeOptionCopyWith<$Res>(_self.option, (value) {
      return _then(_self.copyWith(option: value));
    });
  }
}

// dart format on
