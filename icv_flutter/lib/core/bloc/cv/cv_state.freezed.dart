// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CvState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CvState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CvState()';
  }
}

/// @nodoc
class $CvStateCopyWith<$Res> {
  $CvStateCopyWith(CvState _, $Res Function(CvState) __);
}

/// Adds pattern-matching-related methods to [CvState].
extension CvStatePatterns on CvState {
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
    TResult Function(CvInitial value)? initial,
    TResult Function(CvLoading value)? loading,
    TResult Function(CvLoaded value)? loaded,
    TResult Function(CvSaved value)? saved,
    TResult Function(CvError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CvInitial() when initial != null:
        return initial(_that);
      case CvLoading() when loading != null:
        return loading(_that);
      case CvLoaded() when loaded != null:
        return loaded(_that);
      case CvSaved() when saved != null:
        return saved(_that);
      case CvError() when error != null:
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
    required TResult Function(CvInitial value) initial,
    required TResult Function(CvLoading value) loading,
    required TResult Function(CvLoaded value) loaded,
    required TResult Function(CvSaved value) saved,
    required TResult Function(CvError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case CvInitial():
        return initial(_that);
      case CvLoading():
        return loading(_that);
      case CvLoaded():
        return loaded(_that);
      case CvSaved():
        return saved(_that);
      case CvError():
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
    TResult? Function(CvInitial value)? initial,
    TResult? Function(CvLoading value)? loading,
    TResult? Function(CvLoaded value)? loaded,
    TResult? Function(CvSaved value)? saved,
    TResult? Function(CvError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case CvInitial() when initial != null:
        return initial(_that);
      case CvLoading() when loading != null:
        return loading(_that);
      case CvLoaded() when loaded != null:
        return loaded(_that);
      case CvSaved() when saved != null:
        return saved(_that);
      case CvError() when error != null:
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
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CvData data, CvMetadata metadata, bool hasUnsavedChanges)?
        loaded,
    TResult Function(CvData data, CvMetadata metadata)? saved,
    TResult Function(
            String message, CvData? previousData, CvMetadata? previousMetadata)?
        error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CvInitial() when initial != null:
        return initial();
      case CvLoading() when loading != null:
        return loading();
      case CvLoaded() when loaded != null:
        return loaded(_that.data, _that.metadata, _that.hasUnsavedChanges);
      case CvSaved() when saved != null:
        return saved(_that.data, _that.metadata);
      case CvError() when error != null:
        return error(_that.message, _that.previousData, _that.previousMetadata);
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CvData data, CvMetadata metadata, bool hasUnsavedChanges)
        loaded,
    required TResult Function(CvData data, CvMetadata metadata) saved,
    required TResult Function(
            String message, CvData? previousData, CvMetadata? previousMetadata)
        error,
  }) {
    final _that = this;
    switch (_that) {
      case CvInitial():
        return initial();
      case CvLoading():
        return loading();
      case CvLoaded():
        return loaded(_that.data, _that.metadata, _that.hasUnsavedChanges);
      case CvSaved():
        return saved(_that.data, _that.metadata);
      case CvError():
        return error(_that.message, _that.previousData, _that.previousMetadata);
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
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CvData data, CvMetadata metadata, bool hasUnsavedChanges)?
        loaded,
    TResult? Function(CvData data, CvMetadata metadata)? saved,
    TResult? Function(
            String message, CvData? previousData, CvMetadata? previousMetadata)?
        error,
  }) {
    final _that = this;
    switch (_that) {
      case CvInitial() when initial != null:
        return initial();
      case CvLoading() when loading != null:
        return loading();
      case CvLoaded() when loaded != null:
        return loaded(_that.data, _that.metadata, _that.hasUnsavedChanges);
      case CvSaved() when saved != null:
        return saved(_that.data, _that.metadata);
      case CvError() when error != null:
        return error(_that.message, _that.previousData, _that.previousMetadata);
      case _:
        return null;
    }
  }
}

/// @nodoc

class CvInitial implements CvState {
  const CvInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CvInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CvState.initial()';
  }
}

/// @nodoc

class CvLoading implements CvState {
  const CvLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CvLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CvState.loading()';
  }
}

/// @nodoc

class CvLoaded implements CvState {
  const CvLoaded(
      {required this.data,
      required this.metadata,
      this.hasUnsavedChanges = false});

  final CvData data;
  final CvMetadata metadata;
  @JsonKey()
  final bool hasUnsavedChanges;

  /// Create a copy of CvState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CvLoadedCopyWith<CvLoaded> get copyWith =>
      _$CvLoadedCopyWithImpl<CvLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CvLoaded &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.hasUnsavedChanges, hasUnsavedChanges) ||
                other.hasUnsavedChanges == hasUnsavedChanges));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, data, metadata, hasUnsavedChanges);

  @override
  String toString() {
    return 'CvState.loaded(data: $data, metadata: $metadata, hasUnsavedChanges: $hasUnsavedChanges)';
  }
}

/// @nodoc
abstract mixin class $CvLoadedCopyWith<$Res> implements $CvStateCopyWith<$Res> {
  factory $CvLoadedCopyWith(CvLoaded value, $Res Function(CvLoaded) _then) =
      _$CvLoadedCopyWithImpl;
  @useResult
  $Res call({CvData data, CvMetadata metadata, bool hasUnsavedChanges});

  $CvDataCopyWith<$Res> get data;
  $CvMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$CvLoadedCopyWithImpl<$Res> implements $CvLoadedCopyWith<$Res> {
  _$CvLoadedCopyWithImpl(this._self, this._then);

  final CvLoaded _self;
  final $Res Function(CvLoaded) _then;

  /// Create a copy of CvState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? metadata = null,
    Object? hasUnsavedChanges = null,
  }) {
    return _then(CvLoaded(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CvData,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as CvMetadata,
      hasUnsavedChanges: null == hasUnsavedChanges
          ? _self.hasUnsavedChanges
          : hasUnsavedChanges // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of CvState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CvDataCopyWith<$Res> get data {
    return $CvDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }

  /// Create a copy of CvState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CvMetadataCopyWith<$Res> get metadata {
    return $CvMetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// @nodoc

class CvSaved implements CvState {
  const CvSaved({required this.data, required this.metadata});

  final CvData data;
  final CvMetadata metadata;

  /// Create a copy of CvState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CvSavedCopyWith<CvSaved> get copyWith =>
      _$CvSavedCopyWithImpl<CvSaved>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CvSaved &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, metadata);

  @override
  String toString() {
    return 'CvState.saved(data: $data, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CvSavedCopyWith<$Res> implements $CvStateCopyWith<$Res> {
  factory $CvSavedCopyWith(CvSaved value, $Res Function(CvSaved) _then) =
      _$CvSavedCopyWithImpl;
  @useResult
  $Res call({CvData data, CvMetadata metadata});

  $CvDataCopyWith<$Res> get data;
  $CvMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$CvSavedCopyWithImpl<$Res> implements $CvSavedCopyWith<$Res> {
  _$CvSavedCopyWithImpl(this._self, this._then);

  final CvSaved _self;
  final $Res Function(CvSaved) _then;

  /// Create a copy of CvState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? metadata = null,
  }) {
    return _then(CvSaved(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CvData,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as CvMetadata,
    ));
  }

  /// Create a copy of CvState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CvDataCopyWith<$Res> get data {
    return $CvDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }

  /// Create a copy of CvState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CvMetadataCopyWith<$Res> get metadata {
    return $CvMetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// @nodoc

class CvError implements CvState {
  const CvError(
      {required this.message, this.previousData, this.previousMetadata});

  final String message;
  final CvData? previousData;
  final CvMetadata? previousMetadata;

  /// Create a copy of CvState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CvErrorCopyWith<CvError> get copyWith =>
      _$CvErrorCopyWithImpl<CvError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CvError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.previousData, previousData) ||
                other.previousData == previousData) &&
            (identical(other.previousMetadata, previousMetadata) ||
                other.previousMetadata == previousMetadata));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, previousData, previousMetadata);

  @override
  String toString() {
    return 'CvState.error(message: $message, previousData: $previousData, previousMetadata: $previousMetadata)';
  }
}

/// @nodoc
abstract mixin class $CvErrorCopyWith<$Res> implements $CvStateCopyWith<$Res> {
  factory $CvErrorCopyWith(CvError value, $Res Function(CvError) _then) =
      _$CvErrorCopyWithImpl;
  @useResult
  $Res call(
      {String message, CvData? previousData, CvMetadata? previousMetadata});

  $CvDataCopyWith<$Res>? get previousData;
  $CvMetadataCopyWith<$Res>? get previousMetadata;
}

/// @nodoc
class _$CvErrorCopyWithImpl<$Res> implements $CvErrorCopyWith<$Res> {
  _$CvErrorCopyWithImpl(this._self, this._then);

  final CvError _self;
  final $Res Function(CvError) _then;

  /// Create a copy of CvState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? previousData = freezed,
    Object? previousMetadata = freezed,
  }) {
    return _then(CvError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      previousData: freezed == previousData
          ? _self.previousData
          : previousData // ignore: cast_nullable_to_non_nullable
              as CvData?,
      previousMetadata: freezed == previousMetadata
          ? _self.previousMetadata
          : previousMetadata // ignore: cast_nullable_to_non_nullable
              as CvMetadata?,
    ));
  }

  /// Create a copy of CvState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CvDataCopyWith<$Res>? get previousData {
    if (_self.previousData == null) {
      return null;
    }

    return $CvDataCopyWith<$Res>(_self.previousData!, (value) {
      return _then(_self.copyWith(previousData: value));
    });
  }

  /// Create a copy of CvState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CvMetadataCopyWith<$Res>? get previousMetadata {
    if (_self.previousMetadata == null) {
      return null;
    }

    return $CvMetadataCopyWith<$Res>(_self.previousMetadata!, (value) {
      return _then(_self.copyWith(previousMetadata: value));
    });
  }
}

// dart format on
