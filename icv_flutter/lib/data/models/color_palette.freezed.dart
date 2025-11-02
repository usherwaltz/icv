// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ColorPalette {
  String get id;
  String get name;
  String get primaryColor; // Hex color
  String get secondaryColor; // Hex color
  String get accentColor; // Hex color
  String get backgroundColor; // Hex color
  String get surfaceColor; // Hex color
  String get textColor; // Hex color
// Dark variant colors
  String get primaryColorDark;
  String get secondaryColorDark;
  String get accentColorDark;
  String get backgroundColorDark;
  String get surfaceColorDark;
  String get textColorDark;

  /// Create a copy of ColorPalette
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ColorPaletteCopyWith<ColorPalette> get copyWith =>
      _$ColorPaletteCopyWithImpl<ColorPalette>(
          this as ColorPalette, _$identity);

  /// Serializes this ColorPalette to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ColorPalette &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.primaryColor, primaryColor) ||
                other.primaryColor == primaryColor) &&
            (identical(other.secondaryColor, secondaryColor) ||
                other.secondaryColor == secondaryColor) &&
            (identical(other.accentColor, accentColor) ||
                other.accentColor == accentColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.surfaceColor, surfaceColor) ||
                other.surfaceColor == surfaceColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.primaryColorDark, primaryColorDark) ||
                other.primaryColorDark == primaryColorDark) &&
            (identical(other.secondaryColorDark, secondaryColorDark) ||
                other.secondaryColorDark == secondaryColorDark) &&
            (identical(other.accentColorDark, accentColorDark) ||
                other.accentColorDark == accentColorDark) &&
            (identical(other.backgroundColorDark, backgroundColorDark) ||
                other.backgroundColorDark == backgroundColorDark) &&
            (identical(other.surfaceColorDark, surfaceColorDark) ||
                other.surfaceColorDark == surfaceColorDark) &&
            (identical(other.textColorDark, textColorDark) ||
                other.textColorDark == textColorDark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      primaryColor,
      secondaryColor,
      accentColor,
      backgroundColor,
      surfaceColor,
      textColor,
      primaryColorDark,
      secondaryColorDark,
      accentColorDark,
      backgroundColorDark,
      surfaceColorDark,
      textColorDark);

  @override
  String toString() {
    return 'ColorPalette(id: $id, name: $name, primaryColor: $primaryColor, secondaryColor: $secondaryColor, accentColor: $accentColor, backgroundColor: $backgroundColor, surfaceColor: $surfaceColor, textColor: $textColor, primaryColorDark: $primaryColorDark, secondaryColorDark: $secondaryColorDark, accentColorDark: $accentColorDark, backgroundColorDark: $backgroundColorDark, surfaceColorDark: $surfaceColorDark, textColorDark: $textColorDark)';
  }
}

/// @nodoc
abstract mixin class $ColorPaletteCopyWith<$Res> {
  factory $ColorPaletteCopyWith(
          ColorPalette value, $Res Function(ColorPalette) _then) =
      _$ColorPaletteCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String primaryColor,
      String secondaryColor,
      String accentColor,
      String backgroundColor,
      String surfaceColor,
      String textColor,
      String primaryColorDark,
      String secondaryColorDark,
      String accentColorDark,
      String backgroundColorDark,
      String surfaceColorDark,
      String textColorDark});
}

/// @nodoc
class _$ColorPaletteCopyWithImpl<$Res> implements $ColorPaletteCopyWith<$Res> {
  _$ColorPaletteCopyWithImpl(this._self, this._then);

  final ColorPalette _self;
  final $Res Function(ColorPalette) _then;

  /// Create a copy of ColorPalette
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? primaryColor = null,
    Object? secondaryColor = null,
    Object? accentColor = null,
    Object? backgroundColor = null,
    Object? surfaceColor = null,
    Object? textColor = null,
    Object? primaryColorDark = null,
    Object? secondaryColorDark = null,
    Object? accentColorDark = null,
    Object? backgroundColorDark = null,
    Object? surfaceColorDark = null,
    Object? textColorDark = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      primaryColor: null == primaryColor
          ? _self.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryColor: null == secondaryColor
          ? _self.secondaryColor
          : secondaryColor // ignore: cast_nullable_to_non_nullable
              as String,
      accentColor: null == accentColor
          ? _self.accentColor
          : accentColor // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      surfaceColor: null == surfaceColor
          ? _self.surfaceColor
          : surfaceColor // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _self.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      primaryColorDark: null == primaryColorDark
          ? _self.primaryColorDark
          : primaryColorDark // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryColorDark: null == secondaryColorDark
          ? _self.secondaryColorDark
          : secondaryColorDark // ignore: cast_nullable_to_non_nullable
              as String,
      accentColorDark: null == accentColorDark
          ? _self.accentColorDark
          : accentColorDark // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColorDark: null == backgroundColorDark
          ? _self.backgroundColorDark
          : backgroundColorDark // ignore: cast_nullable_to_non_nullable
              as String,
      surfaceColorDark: null == surfaceColorDark
          ? _self.surfaceColorDark
          : surfaceColorDark // ignore: cast_nullable_to_non_nullable
              as String,
      textColorDark: null == textColorDark
          ? _self.textColorDark
          : textColorDark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ColorPalette].
extension ColorPalettePatterns on ColorPalette {
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
    TResult Function(_ColorPalette value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColorPalette() when $default != null:
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
    TResult Function(_ColorPalette value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColorPalette():
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
    TResult? Function(_ColorPalette value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColorPalette() when $default != null:
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
            String id,
            String name,
            String primaryColor,
            String secondaryColor,
            String accentColor,
            String backgroundColor,
            String surfaceColor,
            String textColor,
            String primaryColorDark,
            String secondaryColorDark,
            String accentColorDark,
            String backgroundColorDark,
            String surfaceColorDark,
            String textColorDark)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColorPalette() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.primaryColor,
            _that.secondaryColor,
            _that.accentColor,
            _that.backgroundColor,
            _that.surfaceColor,
            _that.textColor,
            _that.primaryColorDark,
            _that.secondaryColorDark,
            _that.accentColorDark,
            _that.backgroundColorDark,
            _that.surfaceColorDark,
            _that.textColorDark);
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
            String id,
            String name,
            String primaryColor,
            String secondaryColor,
            String accentColor,
            String backgroundColor,
            String surfaceColor,
            String textColor,
            String primaryColorDark,
            String secondaryColorDark,
            String accentColorDark,
            String backgroundColorDark,
            String surfaceColorDark,
            String textColorDark)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColorPalette():
        return $default(
            _that.id,
            _that.name,
            _that.primaryColor,
            _that.secondaryColor,
            _that.accentColor,
            _that.backgroundColor,
            _that.surfaceColor,
            _that.textColor,
            _that.primaryColorDark,
            _that.secondaryColorDark,
            _that.accentColorDark,
            _that.backgroundColorDark,
            _that.surfaceColorDark,
            _that.textColorDark);
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
            String id,
            String name,
            String primaryColor,
            String secondaryColor,
            String accentColor,
            String backgroundColor,
            String surfaceColor,
            String textColor,
            String primaryColorDark,
            String secondaryColorDark,
            String accentColorDark,
            String backgroundColorDark,
            String surfaceColorDark,
            String textColorDark)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColorPalette() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.primaryColor,
            _that.secondaryColor,
            _that.accentColor,
            _that.backgroundColor,
            _that.surfaceColor,
            _that.textColor,
            _that.primaryColorDark,
            _that.secondaryColorDark,
            _that.accentColorDark,
            _that.backgroundColorDark,
            _that.surfaceColorDark,
            _that.textColorDark);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ColorPalette implements ColorPalette {
  const _ColorPalette(
      {required this.id,
      required this.name,
      required this.primaryColor,
      required this.secondaryColor,
      required this.accentColor,
      required this.backgroundColor,
      required this.surfaceColor,
      required this.textColor,
      required this.primaryColorDark,
      required this.secondaryColorDark,
      required this.accentColorDark,
      required this.backgroundColorDark,
      required this.surfaceColorDark,
      required this.textColorDark});
  factory _ColorPalette.fromJson(Map<String, dynamic> json) =>
      _$ColorPaletteFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String primaryColor;
// Hex color
  @override
  final String secondaryColor;
// Hex color
  @override
  final String accentColor;
// Hex color
  @override
  final String backgroundColor;
// Hex color
  @override
  final String surfaceColor;
// Hex color
  @override
  final String textColor;
// Hex color
// Dark variant colors
  @override
  final String primaryColorDark;
  @override
  final String secondaryColorDark;
  @override
  final String accentColorDark;
  @override
  final String backgroundColorDark;
  @override
  final String surfaceColorDark;
  @override
  final String textColorDark;

  /// Create a copy of ColorPalette
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ColorPaletteCopyWith<_ColorPalette> get copyWith =>
      __$ColorPaletteCopyWithImpl<_ColorPalette>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ColorPaletteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColorPalette &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.primaryColor, primaryColor) ||
                other.primaryColor == primaryColor) &&
            (identical(other.secondaryColor, secondaryColor) ||
                other.secondaryColor == secondaryColor) &&
            (identical(other.accentColor, accentColor) ||
                other.accentColor == accentColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.surfaceColor, surfaceColor) ||
                other.surfaceColor == surfaceColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.primaryColorDark, primaryColorDark) ||
                other.primaryColorDark == primaryColorDark) &&
            (identical(other.secondaryColorDark, secondaryColorDark) ||
                other.secondaryColorDark == secondaryColorDark) &&
            (identical(other.accentColorDark, accentColorDark) ||
                other.accentColorDark == accentColorDark) &&
            (identical(other.backgroundColorDark, backgroundColorDark) ||
                other.backgroundColorDark == backgroundColorDark) &&
            (identical(other.surfaceColorDark, surfaceColorDark) ||
                other.surfaceColorDark == surfaceColorDark) &&
            (identical(other.textColorDark, textColorDark) ||
                other.textColorDark == textColorDark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      primaryColor,
      secondaryColor,
      accentColor,
      backgroundColor,
      surfaceColor,
      textColor,
      primaryColorDark,
      secondaryColorDark,
      accentColorDark,
      backgroundColorDark,
      surfaceColorDark,
      textColorDark);

  @override
  String toString() {
    return 'ColorPalette(id: $id, name: $name, primaryColor: $primaryColor, secondaryColor: $secondaryColor, accentColor: $accentColor, backgroundColor: $backgroundColor, surfaceColor: $surfaceColor, textColor: $textColor, primaryColorDark: $primaryColorDark, secondaryColorDark: $secondaryColorDark, accentColorDark: $accentColorDark, backgroundColorDark: $backgroundColorDark, surfaceColorDark: $surfaceColorDark, textColorDark: $textColorDark)';
  }
}

/// @nodoc
abstract mixin class _$ColorPaletteCopyWith<$Res>
    implements $ColorPaletteCopyWith<$Res> {
  factory _$ColorPaletteCopyWith(
          _ColorPalette value, $Res Function(_ColorPalette) _then) =
      __$ColorPaletteCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String primaryColor,
      String secondaryColor,
      String accentColor,
      String backgroundColor,
      String surfaceColor,
      String textColor,
      String primaryColorDark,
      String secondaryColorDark,
      String accentColorDark,
      String backgroundColorDark,
      String surfaceColorDark,
      String textColorDark});
}

/// @nodoc
class __$ColorPaletteCopyWithImpl<$Res>
    implements _$ColorPaletteCopyWith<$Res> {
  __$ColorPaletteCopyWithImpl(this._self, this._then);

  final _ColorPalette _self;
  final $Res Function(_ColorPalette) _then;

  /// Create a copy of ColorPalette
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? primaryColor = null,
    Object? secondaryColor = null,
    Object? accentColor = null,
    Object? backgroundColor = null,
    Object? surfaceColor = null,
    Object? textColor = null,
    Object? primaryColorDark = null,
    Object? secondaryColorDark = null,
    Object? accentColorDark = null,
    Object? backgroundColorDark = null,
    Object? surfaceColorDark = null,
    Object? textColorDark = null,
  }) {
    return _then(_ColorPalette(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      primaryColor: null == primaryColor
          ? _self.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryColor: null == secondaryColor
          ? _self.secondaryColor
          : secondaryColor // ignore: cast_nullable_to_non_nullable
              as String,
      accentColor: null == accentColor
          ? _self.accentColor
          : accentColor // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      surfaceColor: null == surfaceColor
          ? _self.surfaceColor
          : surfaceColor // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _self.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      primaryColorDark: null == primaryColorDark
          ? _self.primaryColorDark
          : primaryColorDark // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryColorDark: null == secondaryColorDark
          ? _self.secondaryColorDark
          : secondaryColorDark // ignore: cast_nullable_to_non_nullable
              as String,
      accentColorDark: null == accentColorDark
          ? _self.accentColorDark
          : accentColorDark // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColorDark: null == backgroundColorDark
          ? _self.backgroundColorDark
          : backgroundColorDark // ignore: cast_nullable_to_non_nullable
              as String,
      surfaceColorDark: null == surfaceColorDark
          ? _self.surfaceColorDark
          : surfaceColorDark // ignore: cast_nullable_to_non_nullable
              as String,
      textColorDark: null == textColorDark
          ? _self.textColorDark
          : textColorDark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
