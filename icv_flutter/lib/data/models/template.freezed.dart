// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Template {
  String get id;
  String get name;
  String get description;
  String get category; // e.g., "modern", "classic", "creative"
  String? get previewThumbnailPath;

  /// Create a copy of Template
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemplateCopyWith<Template> get copyWith =>
      _$TemplateCopyWithImpl<Template>(this as Template, _$identity);

  /// Serializes this Template to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Template &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.previewThumbnailPath, previewThumbnailPath) ||
                other.previewThumbnailPath == previewThumbnailPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, category, previewThumbnailPath);

  @override
  String toString() {
    return 'Template(id: $id, name: $name, description: $description, category: $category, previewThumbnailPath: $previewThumbnailPath)';
  }
}

/// @nodoc
abstract mixin class $TemplateCopyWith<$Res> {
  factory $TemplateCopyWith(Template value, $Res Function(Template) _then) =
      _$TemplateCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String category,
      String? previewThumbnailPath});
}

/// @nodoc
class _$TemplateCopyWithImpl<$Res> implements $TemplateCopyWith<$Res> {
  _$TemplateCopyWithImpl(this._self, this._then);

  final Template _self;
  final $Res Function(Template) _then;

  /// Create a copy of Template
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? category = null,
    Object? previewThumbnailPath = freezed,
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
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      previewThumbnailPath: freezed == previewThumbnailPath
          ? _self.previewThumbnailPath
          : previewThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Template].
extension TemplatePatterns on Template {
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
    TResult Function(_Template value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Template() when $default != null:
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
    TResult Function(_Template value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Template():
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
    TResult? Function(_Template value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Template() when $default != null:
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
    TResult Function(String id, String name, String description,
            String category, String? previewThumbnailPath)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Template() when $default != null:
        return $default(_that.id, _that.name, _that.description, _that.category,
            _that.previewThumbnailPath);
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
    TResult Function(String id, String name, String description,
            String category, String? previewThumbnailPath)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Template():
        return $default(_that.id, _that.name, _that.description, _that.category,
            _that.previewThumbnailPath);
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
    TResult? Function(String id, String name, String description,
            String category, String? previewThumbnailPath)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Template() when $default != null:
        return $default(_that.id, _that.name, _that.description, _that.category,
            _that.previewThumbnailPath);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Template implements Template {
  const _Template(
      {required this.id,
      required this.name,
      required this.description,
      required this.category,
      this.previewThumbnailPath});
  factory _Template.fromJson(Map<String, dynamic> json) =>
      _$TemplateFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String category;
// e.g., "modern", "classic", "creative"
  @override
  final String? previewThumbnailPath;

  /// Create a copy of Template
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TemplateCopyWith<_Template> get copyWith =>
      __$TemplateCopyWithImpl<_Template>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TemplateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Template &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.previewThumbnailPath, previewThumbnailPath) ||
                other.previewThumbnailPath == previewThumbnailPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, category, previewThumbnailPath);

  @override
  String toString() {
    return 'Template(id: $id, name: $name, description: $description, category: $category, previewThumbnailPath: $previewThumbnailPath)';
  }
}

/// @nodoc
abstract mixin class _$TemplateCopyWith<$Res>
    implements $TemplateCopyWith<$Res> {
  factory _$TemplateCopyWith(_Template value, $Res Function(_Template) _then) =
      __$TemplateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String category,
      String? previewThumbnailPath});
}

/// @nodoc
class __$TemplateCopyWithImpl<$Res> implements _$TemplateCopyWith<$Res> {
  __$TemplateCopyWithImpl(this._self, this._then);

  final _Template _self;
  final $Res Function(_Template) _then;

  /// Create a copy of Template
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? category = null,
    Object? previewThumbnailPath = freezed,
  }) {
    return _then(_Template(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      previewThumbnailPath: freezed == previewThumbnailPath
          ? _self.previewThumbnailPath
          : previewThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
