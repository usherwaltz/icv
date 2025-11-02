// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState()';
  }
}

/// @nodoc
class $AuthStateCopyWith<$Res> {
  $AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}

/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthChecking value)? checking,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    TResult Function(AuthError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthInitial() when initial != null:
        return initial(_that);
      case AuthChecking() when checking != null:
        return checking(_that);
      case AuthAuthenticated() when authenticated != null:
        return authenticated(_that);
      case AuthUnauthenticated() when unauthenticated != null:
        return unauthenticated(_that);
      case AuthError() when error != null:
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthChecking value) checking,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
    required TResult Function(AuthError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case AuthInitial():
        return initial(_that);
      case AuthChecking():
        return checking(_that);
      case AuthAuthenticated():
        return authenticated(_that);
      case AuthUnauthenticated():
        return unauthenticated(_that);
      case AuthError():
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
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthChecking value)? checking,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
    TResult? Function(AuthError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case AuthInitial() when initial != null:
        return initial(_that);
      case AuthChecking() when checking != null:
        return checking(_that);
      case AuthAuthenticated() when authenticated != null:
        return authenticated(_that);
      case AuthUnauthenticated() when unauthenticated != null:
        return unauthenticated(_that);
      case AuthError() when error != null:
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
    TResult Function()? checking,
    TResult Function(String userId, String email, String? displayName)?
        authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message, AuthState? previousState)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthInitial() when initial != null:
        return initial();
      case AuthChecking() when checking != null:
        return checking();
      case AuthAuthenticated() when authenticated != null:
        return authenticated(_that.userId, _that.email, _that.displayName);
      case AuthUnauthenticated() when unauthenticated != null:
        return unauthenticated();
      case AuthError() when error != null:
        return error(_that.message, _that.previousState);
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
    required TResult Function() checking,
    required TResult Function(String userId, String email, String? displayName)
        authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message, AuthState? previousState) error,
  }) {
    final _that = this;
    switch (_that) {
      case AuthInitial():
        return initial();
      case AuthChecking():
        return checking();
      case AuthAuthenticated():
        return authenticated(_that.userId, _that.email, _that.displayName);
      case AuthUnauthenticated():
        return unauthenticated();
      case AuthError():
        return error(_that.message, _that.previousState);
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
    TResult? Function()? checking,
    TResult? Function(String userId, String email, String? displayName)?
        authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message, AuthState? previousState)? error,
  }) {
    final _that = this;
    switch (_that) {
      case AuthInitial() when initial != null:
        return initial();
      case AuthChecking() when checking != null:
        return checking();
      case AuthAuthenticated() when authenticated != null:
        return authenticated(_that.userId, _that.email, _that.displayName);
      case AuthUnauthenticated() when unauthenticated != null:
        return unauthenticated();
      case AuthError() when error != null:
        return error(_that.message, _that.previousState);
      case _:
        return null;
    }
  }
}

/// @nodoc

class AuthInitial implements AuthState {
  const AuthInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.initial()';
  }
}

/// @nodoc

class AuthChecking implements AuthState {
  const AuthChecking();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthChecking);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.checking()';
  }
}

/// @nodoc

class AuthAuthenticated implements AuthState {
  const AuthAuthenticated(
      {required this.userId, required this.email, this.displayName});

  final String userId;
  final String email;
  final String? displayName;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthAuthenticatedCopyWith<AuthAuthenticated> get copyWith =>
      _$AuthAuthenticatedCopyWithImpl<AuthAuthenticated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthAuthenticated &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, email, displayName);

  @override
  String toString() {
    return 'AuthState.authenticated(userId: $userId, email: $email, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class $AuthAuthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthAuthenticatedCopyWith(
          AuthAuthenticated value, $Res Function(AuthAuthenticated) _then) =
      _$AuthAuthenticatedCopyWithImpl;
  @useResult
  $Res call({String userId, String email, String? displayName});
}

/// @nodoc
class _$AuthAuthenticatedCopyWithImpl<$Res>
    implements $AuthAuthenticatedCopyWith<$Res> {
  _$AuthAuthenticatedCopyWithImpl(this._self, this._then);

  final AuthAuthenticated _self;
  final $Res Function(AuthAuthenticated) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? displayName = freezed,
  }) {
    return _then(AuthAuthenticated(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class AuthUnauthenticated implements AuthState {
  const AuthUnauthenticated();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }
}

/// @nodoc

class AuthError implements AuthState {
  const AuthError({required this.message, this.previousState});

  final String message;
  final AuthState? previousState;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthErrorCopyWith<AuthError> get copyWith =>
      _$AuthErrorCopyWithImpl<AuthError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.previousState, previousState) ||
                other.previousState == previousState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, previousState);

  @override
  String toString() {
    return 'AuthState.error(message: $message, previousState: $previousState)';
  }
}

/// @nodoc
abstract mixin class $AuthErrorCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) _then) =
      _$AuthErrorCopyWithImpl;
  @useResult
  $Res call({String message, AuthState? previousState});

  $AuthStateCopyWith<$Res>? get previousState;
}

/// @nodoc
class _$AuthErrorCopyWithImpl<$Res> implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(this._self, this._then);

  final AuthError _self;
  final $Res Function(AuthError) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? previousState = freezed,
  }) {
    return _then(AuthError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      previousState: freezed == previousState
          ? _self.previousState
          : previousState // ignore: cast_nullable_to_non_nullable
              as AuthState?,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<$Res>? get previousState {
    if (_self.previousState == null) {
      return null;
    }

    return $AuthStateCopyWith<$Res>(_self.previousState!, (value) {
      return _then(_self.copyWith(previousState: value));
    });
  }
}

// dart format on
