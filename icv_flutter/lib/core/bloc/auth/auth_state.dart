import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

/// Represents the authentication state
@freezed
sealed class AuthState with _$AuthState {
  /// Initial state - authentication status unknown
  const factory AuthState.initial() = AuthInitial;

  /// Checking authentication status
  const factory AuthState.checking() = AuthChecking;

  /// User is authenticated
  const factory AuthState.authenticated({
    required String userId,
    required String email,
    String? displayName,
  }) = AuthAuthenticated;

  /// User is not authenticated
  const factory AuthState.unauthenticated() = AuthUnauthenticated;

  /// Authentication error occurred
  const factory AuthState.error({
    required String message,
    AuthState? previousState,
  }) = AuthError;
}
