// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CvMetadata {
  String get templateId;
  PdfThemeOption get pdfThemeOption;
  Map<String, dynamic>? get pdfCustomTheme; // JSON for custom PDF theme
  List<String> get sectionOrder; // List of section identifiers
  StorageLocation get storageLocation;
  DateTime? get saveTimestamp;
  bool get isDirty;

  /// Create a copy of CvMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CvMetadataCopyWith<CvMetadata> get copyWith =>
      _$CvMetadataCopyWithImpl<CvMetadata>(this as CvMetadata, _$identity);

  /// Serializes this CvMetadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CvMetadata &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.pdfThemeOption, pdfThemeOption) ||
                other.pdfThemeOption == pdfThemeOption) &&
            const DeepCollectionEquality()
                .equals(other.pdfCustomTheme, pdfCustomTheme) &&
            const DeepCollectionEquality()
                .equals(other.sectionOrder, sectionOrder) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            (identical(other.saveTimestamp, saveTimestamp) ||
                other.saveTimestamp == saveTimestamp) &&
            (identical(other.isDirty, isDirty) || other.isDirty == isDirty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      templateId,
      pdfThemeOption,
      const DeepCollectionEquality().hash(pdfCustomTheme),
      const DeepCollectionEquality().hash(sectionOrder),
      storageLocation,
      saveTimestamp,
      isDirty);

  @override
  String toString() {
    return 'CvMetadata(templateId: $templateId, pdfThemeOption: $pdfThemeOption, pdfCustomTheme: $pdfCustomTheme, sectionOrder: $sectionOrder, storageLocation: $storageLocation, saveTimestamp: $saveTimestamp, isDirty: $isDirty)';
  }
}

/// @nodoc
abstract mixin class $CvMetadataCopyWith<$Res> {
  factory $CvMetadataCopyWith(
          CvMetadata value, $Res Function(CvMetadata) _then) =
      _$CvMetadataCopyWithImpl;
  @useResult
  $Res call(
      {String templateId,
      PdfThemeOption pdfThemeOption,
      Map<String, dynamic>? pdfCustomTheme,
      List<String> sectionOrder,
      StorageLocation storageLocation,
      DateTime? saveTimestamp,
      bool isDirty});

  $PdfThemeOptionCopyWith<$Res> get pdfThemeOption;
  $StorageLocationCopyWith<$Res> get storageLocation;
}

/// @nodoc
class _$CvMetadataCopyWithImpl<$Res> implements $CvMetadataCopyWith<$Res> {
  _$CvMetadataCopyWithImpl(this._self, this._then);

  final CvMetadata _self;
  final $Res Function(CvMetadata) _then;

  /// Create a copy of CvMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = null,
    Object? pdfThemeOption = null,
    Object? pdfCustomTheme = freezed,
    Object? sectionOrder = null,
    Object? storageLocation = null,
    Object? saveTimestamp = freezed,
    Object? isDirty = null,
  }) {
    return _then(_self.copyWith(
      templateId: null == templateId
          ? _self.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
      pdfThemeOption: null == pdfThemeOption
          ? _self.pdfThemeOption
          : pdfThemeOption // ignore: cast_nullable_to_non_nullable
              as PdfThemeOption,
      pdfCustomTheme: freezed == pdfCustomTheme
          ? _self.pdfCustomTheme
          : pdfCustomTheme // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      sectionOrder: null == sectionOrder
          ? _self.sectionOrder
          : sectionOrder // ignore: cast_nullable_to_non_nullable
              as List<String>,
      storageLocation: null == storageLocation
          ? _self.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as StorageLocation,
      saveTimestamp: freezed == saveTimestamp
          ? _self.saveTimestamp
          : saveTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDirty: null == isDirty
          ? _self.isDirty
          : isDirty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of CvMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PdfThemeOptionCopyWith<$Res> get pdfThemeOption {
    return $PdfThemeOptionCopyWith<$Res>(_self.pdfThemeOption, (value) {
      return _then(_self.copyWith(pdfThemeOption: value));
    });
  }

  /// Create a copy of CvMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StorageLocationCopyWith<$Res> get storageLocation {
    return $StorageLocationCopyWith<$Res>(_self.storageLocation, (value) {
      return _then(_self.copyWith(storageLocation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CvMetadata].
extension CvMetadataPatterns on CvMetadata {
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
    TResult Function(_CvMetadata value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CvMetadata() when $default != null:
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
    TResult Function(_CvMetadata value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CvMetadata():
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
    TResult? Function(_CvMetadata value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CvMetadata() when $default != null:
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
            String templateId,
            PdfThemeOption pdfThemeOption,
            Map<String, dynamic>? pdfCustomTheme,
            List<String> sectionOrder,
            StorageLocation storageLocation,
            DateTime? saveTimestamp,
            bool isDirty)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CvMetadata() when $default != null:
        return $default(
            _that.templateId,
            _that.pdfThemeOption,
            _that.pdfCustomTheme,
            _that.sectionOrder,
            _that.storageLocation,
            _that.saveTimestamp,
            _that.isDirty);
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
            String templateId,
            PdfThemeOption pdfThemeOption,
            Map<String, dynamic>? pdfCustomTheme,
            List<String> sectionOrder,
            StorageLocation storageLocation,
            DateTime? saveTimestamp,
            bool isDirty)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CvMetadata():
        return $default(
            _that.templateId,
            _that.pdfThemeOption,
            _that.pdfCustomTheme,
            _that.sectionOrder,
            _that.storageLocation,
            _that.saveTimestamp,
            _that.isDirty);
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
            String templateId,
            PdfThemeOption pdfThemeOption,
            Map<String, dynamic>? pdfCustomTheme,
            List<String> sectionOrder,
            StorageLocation storageLocation,
            DateTime? saveTimestamp,
            bool isDirty)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CvMetadata() when $default != null:
        return $default(
            _that.templateId,
            _that.pdfThemeOption,
            _that.pdfCustomTheme,
            _that.sectionOrder,
            _that.storageLocation,
            _that.saveTimestamp,
            _that.isDirty);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CvMetadata implements CvMetadata {
  const _CvMetadata(
      {required this.templateId,
      required this.pdfThemeOption,
      final Map<String, dynamic>? pdfCustomTheme,
      final List<String> sectionOrder = const <String>[],
      this.storageLocation = const StorageLocation.local(),
      this.saveTimestamp,
      this.isDirty = false})
      : _pdfCustomTheme = pdfCustomTheme,
        _sectionOrder = sectionOrder;
  factory _CvMetadata.fromJson(Map<String, dynamic> json) =>
      _$CvMetadataFromJson(json);

  @override
  final String templateId;
  @override
  final PdfThemeOption pdfThemeOption;
  final Map<String, dynamic>? _pdfCustomTheme;
  @override
  Map<String, dynamic>? get pdfCustomTheme {
    final value = _pdfCustomTheme;
    if (value == null) return null;
    if (_pdfCustomTheme is EqualUnmodifiableMapView) return _pdfCustomTheme;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// JSON for custom PDF theme
  final List<String> _sectionOrder;
// JSON for custom PDF theme
  @override
  @JsonKey()
  List<String> get sectionOrder {
    if (_sectionOrder is EqualUnmodifiableListView) return _sectionOrder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sectionOrder);
  }

// List of section identifiers
  @override
  @JsonKey()
  final StorageLocation storageLocation;
  @override
  final DateTime? saveTimestamp;
  @override
  @JsonKey()
  final bool isDirty;

  /// Create a copy of CvMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CvMetadataCopyWith<_CvMetadata> get copyWith =>
      __$CvMetadataCopyWithImpl<_CvMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CvMetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CvMetadata &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.pdfThemeOption, pdfThemeOption) ||
                other.pdfThemeOption == pdfThemeOption) &&
            const DeepCollectionEquality()
                .equals(other._pdfCustomTheme, _pdfCustomTheme) &&
            const DeepCollectionEquality()
                .equals(other._sectionOrder, _sectionOrder) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            (identical(other.saveTimestamp, saveTimestamp) ||
                other.saveTimestamp == saveTimestamp) &&
            (identical(other.isDirty, isDirty) || other.isDirty == isDirty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      templateId,
      pdfThemeOption,
      const DeepCollectionEquality().hash(_pdfCustomTheme),
      const DeepCollectionEquality().hash(_sectionOrder),
      storageLocation,
      saveTimestamp,
      isDirty);

  @override
  String toString() {
    return 'CvMetadata(templateId: $templateId, pdfThemeOption: $pdfThemeOption, pdfCustomTheme: $pdfCustomTheme, sectionOrder: $sectionOrder, storageLocation: $storageLocation, saveTimestamp: $saveTimestamp, isDirty: $isDirty)';
  }
}

/// @nodoc
abstract mixin class _$CvMetadataCopyWith<$Res>
    implements $CvMetadataCopyWith<$Res> {
  factory _$CvMetadataCopyWith(
          _CvMetadata value, $Res Function(_CvMetadata) _then) =
      __$CvMetadataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String templateId,
      PdfThemeOption pdfThemeOption,
      Map<String, dynamic>? pdfCustomTheme,
      List<String> sectionOrder,
      StorageLocation storageLocation,
      DateTime? saveTimestamp,
      bool isDirty});

  @override
  $PdfThemeOptionCopyWith<$Res> get pdfThemeOption;
  @override
  $StorageLocationCopyWith<$Res> get storageLocation;
}

/// @nodoc
class __$CvMetadataCopyWithImpl<$Res> implements _$CvMetadataCopyWith<$Res> {
  __$CvMetadataCopyWithImpl(this._self, this._then);

  final _CvMetadata _self;
  final $Res Function(_CvMetadata) _then;

  /// Create a copy of CvMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? templateId = null,
    Object? pdfThemeOption = null,
    Object? pdfCustomTheme = freezed,
    Object? sectionOrder = null,
    Object? storageLocation = null,
    Object? saveTimestamp = freezed,
    Object? isDirty = null,
  }) {
    return _then(_CvMetadata(
      templateId: null == templateId
          ? _self.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
      pdfThemeOption: null == pdfThemeOption
          ? _self.pdfThemeOption
          : pdfThemeOption // ignore: cast_nullable_to_non_nullable
              as PdfThemeOption,
      pdfCustomTheme: freezed == pdfCustomTheme
          ? _self._pdfCustomTheme
          : pdfCustomTheme // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      sectionOrder: null == sectionOrder
          ? _self._sectionOrder
          : sectionOrder // ignore: cast_nullable_to_non_nullable
              as List<String>,
      storageLocation: null == storageLocation
          ? _self.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as StorageLocation,
      saveTimestamp: freezed == saveTimestamp
          ? _self.saveTimestamp
          : saveTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDirty: null == isDirty
          ? _self.isDirty
          : isDirty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of CvMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PdfThemeOptionCopyWith<$Res> get pdfThemeOption {
    return $PdfThemeOptionCopyWith<$Res>(_self.pdfThemeOption, (value) {
      return _then(_self.copyWith(pdfThemeOption: value));
    });
  }

  /// Create a copy of CvMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StorageLocationCopyWith<$Res> get storageLocation {
    return $StorageLocationCopyWith<$Res>(_self.storageLocation, (value) {
      return _then(_self.copyWith(storageLocation: value));
    });
  }
}

// dart format on
