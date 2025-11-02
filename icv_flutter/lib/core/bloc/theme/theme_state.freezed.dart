// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThemeState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ThemeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ThemeState()';
  }
}

/// @nodoc
class $ThemeStateCopyWith<$Res> {
  $ThemeStateCopyWith(ThemeState _, $Res Function(ThemeState) __);
}

/// Adds pattern-matching-related methods to [ThemeState].
extension ThemeStatePatterns on ThemeState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeInitial value)? initial,
    TResult Function(ThemeLoaded value)? loaded,
    TResult Function(ThemeError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ThemeInitial() when initial != null:
        return initial(_that);
      case ThemeLoaded() when loaded != null:
        return loaded(_that);
      case ThemeError() when error != null:
        return error(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeInitial value) initial,
    required TResult Function(ThemeLoaded value) loaded,
    required TResult Function(ThemeError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case ThemeInitial():
        return initial(_that);
      case ThemeLoaded():
        return loaded(_that);
      case ThemeError():
        return error(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeInitial value)? initial,
    TResult? Function(ThemeLoaded value)? loaded,
    TResult? Function(ThemeError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case ThemeInitial() when initial != null:
        return initial(_that);
      case ThemeLoaded() when loaded != null:
        return loaded(_that);
      case ThemeError() when error != null:
        return error(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme theme, ColorPalette? colorPalette)? initial,
    TResult Function(AppTheme theme, ColorPalette? colorPalette)? loaded,
    TResult Function(String message, AppTheme? fallbackTheme,
            ColorPalette? fallbackColorPalette)?
        error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ThemeInitial() when initial != null:
        return initial(_that.theme, _that.colorPalette);
      case ThemeLoaded() when loaded != null:
        return loaded(_that.theme, _that.colorPalette);
      case ThemeError() when error != null:
        return error(
            _that.message, _that.fallbackTheme, _that.fallbackColorPalette);
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
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme theme, ColorPalette? colorPalette)
        initial,
    required TResult Function(AppTheme theme, ColorPalette? colorPalette)
        loaded,
    required TResult Function(String message, AppTheme? fallbackTheme,
            ColorPalette? fallbackColorPalette)
        error,
  }) {
    final _that = this;
    switch (_that) {
      case ThemeInitial():
        return initial(_that.theme, _that.colorPalette);
      case ThemeLoaded():
        return loaded(_that.theme, _that.colorPalette);
      case ThemeError():
        return error(
            _that.message, _that.fallbackTheme, _that.fallbackColorPalette);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppTheme theme, ColorPalette? colorPalette)? initial,
    TResult? Function(AppTheme theme, ColorPalette? colorPalette)? loaded,
    TResult? Function(String message, AppTheme? fallbackTheme,
            ColorPalette? fallbackColorPalette)?
        error,
  }) {
    final _that = this;
    switch (_that) {
      case ThemeInitial() when initial != null:
        return initial(_that.theme, _that.colorPalette);
      case ThemeLoaded() when loaded != null:
        return loaded(_that.theme, _that.colorPalette);
      case ThemeError() when error != null:
        return error(
            _that.message, _that.fallbackTheme, _that.fallbackColorPalette);
      case _:
        return null;
    }
  }
}

/// @nodoc

class ThemeInitial implements ThemeState {
  const ThemeInitial({this.theme = const AppTheme.light(), this.colorPalette});

  @JsonKey()
  final AppTheme theme;
  final ColorPalette? colorPalette;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeInitialCopyWith<ThemeInitial> get copyWith =>
      _$ThemeInitialCopyWithImpl<ThemeInitial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeInitial &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.colorPalette, colorPalette) ||
                other.colorPalette == colorPalette));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, colorPalette);

  @override
  String toString() {
    return 'ThemeState.initial(theme: $theme, colorPalette: $colorPalette)';
  }
}

/// @nodoc
abstract mixin class $ThemeInitialCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory $ThemeInitialCopyWith(
          ThemeInitial value, $Res Function(ThemeInitial) _then) =
      _$ThemeInitialCopyWithImpl;
  @useResult
  $Res call({AppTheme theme, ColorPalette? colorPalette});

  $AppThemeCopyWith<$Res> get theme;
  $ColorPaletteCopyWith<$Res>? get colorPalette;
}

/// @nodoc
class _$ThemeInitialCopyWithImpl<$Res> implements $ThemeInitialCopyWith<$Res> {
  _$ThemeInitialCopyWithImpl(this._self, this._then);

  final ThemeInitial _self;
  final $Res Function(ThemeInitial) _then;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? theme = null,
    Object? colorPalette = freezed,
  }) {
    return _then(ThemeInitial(
      theme: null == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
      colorPalette: freezed == colorPalette
          ? _self.colorPalette
          : colorPalette // ignore: cast_nullable_to_non_nullable
              as ColorPalette?,
    ));
  }

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppThemeCopyWith<$Res> get theme {
    return $AppThemeCopyWith<$Res>(_self.theme, (value) {
      return _then(_self.copyWith(theme: value));
    });
  }

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorPaletteCopyWith<$Res>? get colorPalette {
    if (_self.colorPalette == null) {
      return null;
    }

    return $ColorPaletteCopyWith<$Res>(_self.colorPalette!, (value) {
      return _then(_self.copyWith(colorPalette: value));
    });
  }
}

/// @nodoc

class ThemeLoaded implements ThemeState {
  const ThemeLoaded({required this.theme, this.colorPalette});

  final AppTheme theme;
  final ColorPalette? colorPalette;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeLoadedCopyWith<ThemeLoaded> get copyWith =>
      _$ThemeLoadedCopyWithImpl<ThemeLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeLoaded &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.colorPalette, colorPalette) ||
                other.colorPalette == colorPalette));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, colorPalette);

  @override
  String toString() {
    return 'ThemeState.loaded(theme: $theme, colorPalette: $colorPalette)';
  }
}

/// @nodoc
abstract mixin class $ThemeLoadedCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory $ThemeLoadedCopyWith(
          ThemeLoaded value, $Res Function(ThemeLoaded) _then) =
      _$ThemeLoadedCopyWithImpl;
  @useResult
  $Res call({AppTheme theme, ColorPalette? colorPalette});

  $AppThemeCopyWith<$Res> get theme;
  $ColorPaletteCopyWith<$Res>? get colorPalette;
}

/// @nodoc
class _$ThemeLoadedCopyWithImpl<$Res> implements $ThemeLoadedCopyWith<$Res> {
  _$ThemeLoadedCopyWithImpl(this._self, this._then);

  final ThemeLoaded _self;
  final $Res Function(ThemeLoaded) _then;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? theme = null,
    Object? colorPalette = freezed,
  }) {
    return _then(ThemeLoaded(
      theme: null == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
      colorPalette: freezed == colorPalette
          ? _self.colorPalette
          : colorPalette // ignore: cast_nullable_to_non_nullable
              as ColorPalette?,
    ));
  }

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppThemeCopyWith<$Res> get theme {
    return $AppThemeCopyWith<$Res>(_self.theme, (value) {
      return _then(_self.copyWith(theme: value));
    });
  }

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorPaletteCopyWith<$Res>? get colorPalette {
    if (_self.colorPalette == null) {
      return null;
    }

    return $ColorPaletteCopyWith<$Res>(_self.colorPalette!, (value) {
      return _then(_self.copyWith(colorPalette: value));
    });
  }
}

/// @nodoc

class ThemeError implements ThemeState {
  const ThemeError(
      {required this.message, this.fallbackTheme, this.fallbackColorPalette});

  final String message;
  final AppTheme? fallbackTheme;
  final ColorPalette? fallbackColorPalette;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeErrorCopyWith<ThemeError> get copyWith =>
      _$ThemeErrorCopyWithImpl<ThemeError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.fallbackTheme, fallbackTheme) ||
                other.fallbackTheme == fallbackTheme) &&
            (identical(other.fallbackColorPalette, fallbackColorPalette) ||
                other.fallbackColorPalette == fallbackColorPalette));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, fallbackTheme, fallbackColorPalette);

  @override
  String toString() {
    return 'ThemeState.error(message: $message, fallbackTheme: $fallbackTheme, fallbackColorPalette: $fallbackColorPalette)';
  }
}

/// @nodoc
abstract mixin class $ThemeErrorCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory $ThemeErrorCopyWith(
          ThemeError value, $Res Function(ThemeError) _then) =
      _$ThemeErrorCopyWithImpl;
  @useResult
  $Res call(
      {String message,
      AppTheme? fallbackTheme,
      ColorPalette? fallbackColorPalette});

  $AppThemeCopyWith<$Res>? get fallbackTheme;
  $ColorPaletteCopyWith<$Res>? get fallbackColorPalette;
}

/// @nodoc
class _$ThemeErrorCopyWithImpl<$Res> implements $ThemeErrorCopyWith<$Res> {
  _$ThemeErrorCopyWithImpl(this._self, this._then);

  final ThemeError _self;
  final $Res Function(ThemeError) _then;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? fallbackTheme = freezed,
    Object? fallbackColorPalette = freezed,
  }) {
    return _then(ThemeError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fallbackTheme: freezed == fallbackTheme
          ? _self.fallbackTheme
          : fallbackTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme?,
      fallbackColorPalette: freezed == fallbackColorPalette
          ? _self.fallbackColorPalette
          : fallbackColorPalette // ignore: cast_nullable_to_non_nullable
              as ColorPalette?,
    ));
  }

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppThemeCopyWith<$Res>? get fallbackTheme {
    if (_self.fallbackTheme == null) {
      return null;
    }

    return $AppThemeCopyWith<$Res>(_self.fallbackTheme!, (value) {
      return _then(_self.copyWith(fallbackTheme: value));
    });
  }

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorPaletteCopyWith<$Res>? get fallbackColorPalette {
    if (_self.fallbackColorPalette == null) {
      return null;
    }

    return $ColorPaletteCopyWith<$Res>(_self.fallbackColorPalette!, (value) {
      return _then(_self.copyWith(fallbackColorPalette: value));
    });
  }
}

// dart format on
