// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_theme_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
PdfThemeOption _$PdfThemeOptionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'blackWhite':
      return BlackWhite.fromJson(json);
    case 'mirrorApp':
      return MirrorApp.fromJson(json);
    case 'custom':
      return PdfCustom.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PdfThemeOption',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PdfThemeOption {
  /// Serializes this PdfThemeOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PdfThemeOption);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PdfThemeOption()';
  }
}

/// @nodoc
class $PdfThemeOptionCopyWith<$Res> {
  $PdfThemeOptionCopyWith(PdfThemeOption _, $Res Function(PdfThemeOption) __);
}

/// Adds pattern-matching-related methods to [PdfThemeOption].
extension PdfThemeOptionPatterns on PdfThemeOption {
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
    TResult Function(BlackWhite value)? blackWhite,
    TResult Function(MirrorApp value)? mirrorApp,
    TResult Function(PdfCustom value)? custom,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BlackWhite() when blackWhite != null:
        return blackWhite(_that);
      case MirrorApp() when mirrorApp != null:
        return mirrorApp(_that);
      case PdfCustom() when custom != null:
        return custom(_that);
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
    required TResult Function(BlackWhite value) blackWhite,
    required TResult Function(MirrorApp value) mirrorApp,
    required TResult Function(PdfCustom value) custom,
  }) {
    final _that = this;
    switch (_that) {
      case BlackWhite():
        return blackWhite(_that);
      case MirrorApp():
        return mirrorApp(_that);
      case PdfCustom():
        return custom(_that);
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
    TResult? Function(BlackWhite value)? blackWhite,
    TResult? Function(MirrorApp value)? mirrorApp,
    TResult? Function(PdfCustom value)? custom,
  }) {
    final _that = this;
    switch (_that) {
      case BlackWhite() when blackWhite != null:
        return blackWhite(_that);
      case MirrorApp() when mirrorApp != null:
        return mirrorApp(_that);
      case PdfCustom() when custom != null:
        return custom(_that);
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
    TResult Function()? blackWhite,
    TResult Function()? mirrorApp,
    TResult Function()? custom,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BlackWhite() when blackWhite != null:
        return blackWhite();
      case MirrorApp() when mirrorApp != null:
        return mirrorApp();
      case PdfCustom() when custom != null:
        return custom();
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
    required TResult Function() blackWhite,
    required TResult Function() mirrorApp,
    required TResult Function() custom,
  }) {
    final _that = this;
    switch (_that) {
      case BlackWhite():
        return blackWhite();
      case MirrorApp():
        return mirrorApp();
      case PdfCustom():
        return custom();
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
    TResult? Function()? blackWhite,
    TResult? Function()? mirrorApp,
    TResult? Function()? custom,
  }) {
    final _that = this;
    switch (_that) {
      case BlackWhite() when blackWhite != null:
        return blackWhite();
      case MirrorApp() when mirrorApp != null:
        return mirrorApp();
      case PdfCustom() when custom != null:
        return custom();
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class BlackWhite implements PdfThemeOption {
  const BlackWhite({final String? $type}) : $type = $type ?? 'blackWhite';
  factory BlackWhite.fromJson(Map<String, dynamic> json) =>
      _$BlackWhiteFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$BlackWhiteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BlackWhite);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PdfThemeOption.blackWhite()';
  }
}

/// @nodoc
@JsonSerializable()
class MirrorApp implements PdfThemeOption {
  const MirrorApp({final String? $type}) : $type = $type ?? 'mirrorApp';
  factory MirrorApp.fromJson(Map<String, dynamic> json) =>
      _$MirrorAppFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$MirrorAppToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MirrorApp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PdfThemeOption.mirrorApp()';
  }
}

/// @nodoc
@JsonSerializable()
class PdfCustom implements PdfThemeOption {
  const PdfCustom({final String? $type}) : $type = $type ?? 'custom';
  factory PdfCustom.fromJson(Map<String, dynamic> json) =>
      _$PdfCustomFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$PdfCustomToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PdfCustom);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PdfThemeOption.custom()';
  }
}

// dart format on
