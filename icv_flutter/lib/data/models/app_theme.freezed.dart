// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AppTheme _$AppThemeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'dark':
      return DarkTheme.fromJson(json);
    case 'light':
      return LightTheme.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppTheme',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppTheme {
  /// Serializes this AppTheme to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppTheme);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppTheme()';
  }
}

/// @nodoc
class $AppThemeCopyWith<$Res> {
  $AppThemeCopyWith(AppTheme _, $Res Function(AppTheme) __);
}

/// Adds pattern-matching-related methods to [AppTheme].
extension AppThemePatterns on AppTheme {
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
    TResult Function(DarkTheme value)? dark,
    TResult Function(LightTheme value)? light,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DarkTheme() when dark != null:
        return dark(_that);
      case LightTheme() when light != null:
        return light(_that);
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
    required TResult Function(DarkTheme value) dark,
    required TResult Function(LightTheme value) light,
  }) {
    final _that = this;
    switch (_that) {
      case DarkTheme():
        return dark(_that);
      case LightTheme():
        return light(_that);
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
    TResult? Function(DarkTheme value)? dark,
    TResult? Function(LightTheme value)? light,
  }) {
    final _that = this;
    switch (_that) {
      case DarkTheme() when dark != null:
        return dark(_that);
      case LightTheme() when light != null:
        return light(_that);
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
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DarkTheme() when dark != null:
        return dark();
      case LightTheme() when light != null:
        return light();
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
    required TResult Function() dark,
    required TResult Function() light,
  }) {
    final _that = this;
    switch (_that) {
      case DarkTheme():
        return dark();
      case LightTheme():
        return light();
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
    TResult? Function()? dark,
    TResult? Function()? light,
  }) {
    final _that = this;
    switch (_that) {
      case DarkTheme() when dark != null:
        return dark();
      case LightTheme() when light != null:
        return light();
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class DarkTheme implements AppTheme {
  const DarkTheme({final String? $type}) : $type = $type ?? 'dark';
  factory DarkTheme.fromJson(Map<String, dynamic> json) =>
      _$DarkThemeFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$DarkThemeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DarkTheme);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppTheme.dark()';
  }
}

/// @nodoc
@JsonSerializable()
class LightTheme implements AppTheme {
  const LightTheme({final String? $type}) : $type = $type ?? 'light';
  factory LightTheme.fromJson(Map<String, dynamic> json) =>
      _$LightThemeFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$LightThemeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LightTheme);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppTheme.light()';
  }
}

// dart format on
