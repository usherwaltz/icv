// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TemplateState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TemplateState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TemplateState()';
  }
}

/// @nodoc
class $TemplateStateCopyWith<$Res> {
  $TemplateStateCopyWith(TemplateState _, $Res Function(TemplateState) __);
}

/// Adds pattern-matching-related methods to [TemplateState].
extension TemplateStatePatterns on TemplateState {
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
    TResult Function(TemplateInitial value)? initial,
    TResult Function(TemplateLoading value)? loading,
    TResult Function(TemplateLoaded value)? loaded,
    TResult Function(TemplateSelected value)? selected,
    TResult Function(TemplateError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case TemplateInitial() when initial != null:
        return initial(_that);
      case TemplateLoading() when loading != null:
        return loading(_that);
      case TemplateLoaded() when loaded != null:
        return loaded(_that);
      case TemplateSelected() when selected != null:
        return selected(_that);
      case TemplateError() when error != null:
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
    required TResult Function(TemplateInitial value) initial,
    required TResult Function(TemplateLoading value) loading,
    required TResult Function(TemplateLoaded value) loaded,
    required TResult Function(TemplateSelected value) selected,
    required TResult Function(TemplateError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case TemplateInitial():
        return initial(_that);
      case TemplateLoading():
        return loading(_that);
      case TemplateLoaded():
        return loaded(_that);
      case TemplateSelected():
        return selected(_that);
      case TemplateError():
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
    TResult? Function(TemplateInitial value)? initial,
    TResult? Function(TemplateLoading value)? loading,
    TResult? Function(TemplateLoaded value)? loaded,
    TResult? Function(TemplateSelected value)? selected,
    TResult? Function(TemplateError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case TemplateInitial() when initial != null:
        return initial(_that);
      case TemplateLoading() when loading != null:
        return loading(_that);
      case TemplateLoaded() when loaded != null:
        return loaded(_that);
      case TemplateSelected() when selected != null:
        return selected(_that);
      case TemplateError() when error != null:
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
    TResult Function(List<Template> templates, Template? selectedTemplate)?
        loaded,
    TResult Function(Template template, List<Template> availableTemplates)?
        selected,
    TResult Function(String message, List<Template>? previousTemplates)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case TemplateInitial() when initial != null:
        return initial();
      case TemplateLoading() when loading != null:
        return loading();
      case TemplateLoaded() when loaded != null:
        return loaded(_that.templates, _that.selectedTemplate);
      case TemplateSelected() when selected != null:
        return selected(_that.template, _that.availableTemplates);
      case TemplateError() when error != null:
        return error(_that.message, _that.previousTemplates);
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
            List<Template> templates, Template? selectedTemplate)
        loaded,
    required TResult Function(
            Template template, List<Template> availableTemplates)
        selected,
    required TResult Function(String message, List<Template>? previousTemplates)
        error,
  }) {
    final _that = this;
    switch (_that) {
      case TemplateInitial():
        return initial();
      case TemplateLoading():
        return loading();
      case TemplateLoaded():
        return loaded(_that.templates, _that.selectedTemplate);
      case TemplateSelected():
        return selected(_that.template, _that.availableTemplates);
      case TemplateError():
        return error(_that.message, _that.previousTemplates);
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
    TResult? Function(List<Template> templates, Template? selectedTemplate)?
        loaded,
    TResult? Function(Template template, List<Template> availableTemplates)?
        selected,
    TResult? Function(String message, List<Template>? previousTemplates)? error,
  }) {
    final _that = this;
    switch (_that) {
      case TemplateInitial() when initial != null:
        return initial();
      case TemplateLoading() when loading != null:
        return loading();
      case TemplateLoaded() when loaded != null:
        return loaded(_that.templates, _that.selectedTemplate);
      case TemplateSelected() when selected != null:
        return selected(_that.template, _that.availableTemplates);
      case TemplateError() when error != null:
        return error(_that.message, _that.previousTemplates);
      case _:
        return null;
    }
  }
}

/// @nodoc

class TemplateInitial implements TemplateState {
  const TemplateInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TemplateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TemplateState.initial()';
  }
}

/// @nodoc

class TemplateLoading implements TemplateState {
  const TemplateLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TemplateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TemplateState.loading()';
  }
}

/// @nodoc

class TemplateLoaded implements TemplateState {
  const TemplateLoaded(
      {required final List<Template> templates, this.selectedTemplate})
      : _templates = templates;

  final List<Template> _templates;
  List<Template> get templates {
    if (_templates is EqualUnmodifiableListView) return _templates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_templates);
  }

  final Template? selectedTemplate;

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemplateLoadedCopyWith<TemplateLoaded> get copyWith =>
      _$TemplateLoadedCopyWithImpl<TemplateLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TemplateLoaded &&
            const DeepCollectionEquality()
                .equals(other._templates, _templates) &&
            (identical(other.selectedTemplate, selectedTemplate) ||
                other.selectedTemplate == selectedTemplate));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_templates), selectedTemplate);

  @override
  String toString() {
    return 'TemplateState.loaded(templates: $templates, selectedTemplate: $selectedTemplate)';
  }
}

/// @nodoc
abstract mixin class $TemplateLoadedCopyWith<$Res>
    implements $TemplateStateCopyWith<$Res> {
  factory $TemplateLoadedCopyWith(
          TemplateLoaded value, $Res Function(TemplateLoaded) _then) =
      _$TemplateLoadedCopyWithImpl;
  @useResult
  $Res call({List<Template> templates, Template? selectedTemplate});

  $TemplateCopyWith<$Res>? get selectedTemplate;
}

/// @nodoc
class _$TemplateLoadedCopyWithImpl<$Res>
    implements $TemplateLoadedCopyWith<$Res> {
  _$TemplateLoadedCopyWithImpl(this._self, this._then);

  final TemplateLoaded _self;
  final $Res Function(TemplateLoaded) _then;

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? templates = null,
    Object? selectedTemplate = freezed,
  }) {
    return _then(TemplateLoaded(
      templates: null == templates
          ? _self._templates
          : templates // ignore: cast_nullable_to_non_nullable
              as List<Template>,
      selectedTemplate: freezed == selectedTemplate
          ? _self.selectedTemplate
          : selectedTemplate // ignore: cast_nullable_to_non_nullable
              as Template?,
    ));
  }

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemplateCopyWith<$Res>? get selectedTemplate {
    if (_self.selectedTemplate == null) {
      return null;
    }

    return $TemplateCopyWith<$Res>(_self.selectedTemplate!, (value) {
      return _then(_self.copyWith(selectedTemplate: value));
    });
  }
}

/// @nodoc

class TemplateSelected implements TemplateState {
  const TemplateSelected(
      {required this.template,
      required final List<Template> availableTemplates})
      : _availableTemplates = availableTemplates;

  final Template template;
  final List<Template> _availableTemplates;
  List<Template> get availableTemplates {
    if (_availableTemplates is EqualUnmodifiableListView)
      return _availableTemplates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableTemplates);
  }

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemplateSelectedCopyWith<TemplateSelected> get copyWith =>
      _$TemplateSelectedCopyWithImpl<TemplateSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TemplateSelected &&
            (identical(other.template, template) ||
                other.template == template) &&
            const DeepCollectionEquality()
                .equals(other._availableTemplates, _availableTemplates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, template,
      const DeepCollectionEquality().hash(_availableTemplates));

  @override
  String toString() {
    return 'TemplateState.selected(template: $template, availableTemplates: $availableTemplates)';
  }
}

/// @nodoc
abstract mixin class $TemplateSelectedCopyWith<$Res>
    implements $TemplateStateCopyWith<$Res> {
  factory $TemplateSelectedCopyWith(
          TemplateSelected value, $Res Function(TemplateSelected) _then) =
      _$TemplateSelectedCopyWithImpl;
  @useResult
  $Res call({Template template, List<Template> availableTemplates});

  $TemplateCopyWith<$Res> get template;
}

/// @nodoc
class _$TemplateSelectedCopyWithImpl<$Res>
    implements $TemplateSelectedCopyWith<$Res> {
  _$TemplateSelectedCopyWithImpl(this._self, this._then);

  final TemplateSelected _self;
  final $Res Function(TemplateSelected) _then;

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? template = null,
    Object? availableTemplates = null,
  }) {
    return _then(TemplateSelected(
      template: null == template
          ? _self.template
          : template // ignore: cast_nullable_to_non_nullable
              as Template,
      availableTemplates: null == availableTemplates
          ? _self._availableTemplates
          : availableTemplates // ignore: cast_nullable_to_non_nullable
              as List<Template>,
    ));
  }

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemplateCopyWith<$Res> get template {
    return $TemplateCopyWith<$Res>(_self.template, (value) {
      return _then(_self.copyWith(template: value));
    });
  }
}

/// @nodoc

class TemplateError implements TemplateState {
  const TemplateError(
      {required this.message, final List<Template>? previousTemplates})
      : _previousTemplates = previousTemplates;

  final String message;
  final List<Template>? _previousTemplates;
  List<Template>? get previousTemplates {
    final value = _previousTemplates;
    if (value == null) return null;
    if (_previousTemplates is EqualUnmodifiableListView)
      return _previousTemplates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemplateErrorCopyWith<TemplateError> get copyWith =>
      _$TemplateErrorCopyWithImpl<TemplateError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TemplateError &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._previousTemplates, _previousTemplates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(_previousTemplates));

  @override
  String toString() {
    return 'TemplateState.error(message: $message, previousTemplates: $previousTemplates)';
  }
}

/// @nodoc
abstract mixin class $TemplateErrorCopyWith<$Res>
    implements $TemplateStateCopyWith<$Res> {
  factory $TemplateErrorCopyWith(
          TemplateError value, $Res Function(TemplateError) _then) =
      _$TemplateErrorCopyWithImpl;
  @useResult
  $Res call({String message, List<Template>? previousTemplates});
}

/// @nodoc
class _$TemplateErrorCopyWithImpl<$Res>
    implements $TemplateErrorCopyWith<$Res> {
  _$TemplateErrorCopyWithImpl(this._self, this._then);

  final TemplateError _self;
  final $Res Function(TemplateError) _then;

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? previousTemplates = freezed,
  }) {
    return _then(TemplateError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      previousTemplates: freezed == previousTemplates
          ? _self._previousTemplates
          : previousTemplates // ignore: cast_nullable_to_non_nullable
              as List<Template>?,
    ));
  }
}

// dart format on
