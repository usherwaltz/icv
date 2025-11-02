# Freezed + BLoC Integration: Benefits & Patterns

## Why Freezed + BLoC Works So Well

### 1. **Union Types for Complete State Coverage**

Freezed sealed classes ensure you handle ALL possible states. The compiler enforces exhaustiveness, preventing bugs from missed cases.

```dart
@freezed
sealed class CvState with _$CvState {
  const factory CvState.initial() = CvInitial;
  const factory CvState.loading() = CvLoading;
  const factory CvState.loaded({required CvData data}) = CvLoaded;
  const factory CvState.error({required String message}) = CvError;
}
```

**Benefits:**
- Compile-time exhaustiveness checking
- Impossible to forget handling error states
- Clear state machine representation

### 2. **Immutability by Default**

All states are immutable. You can't accidentally mutate state, which eliminates entire classes of bugs.

```dart
// ❌ This won't compile - states are immutable
state.data.fullName = 'New Name';

// ✅ Correct way - create new state
emit(CvState.loaded(data: state.data.copyWith(fullName: 'New Name')));
```

### 3. **Pattern Matching (Dart 3+)**

Modern, readable state handling with switch expressions:

```dart
return switch (state) {
  CvInitial() => const Text('No CV'),
  CvLoading() => const CircularProgressIndicator(),
  CvLoaded(:final data) => Text('CV: ${data.fullName}'),
  CvError(:final message) => Text('Error: $message'),
};
```

**Benefits over if-else:**
- Compiler ensures all cases are handled
- Cleaner, more readable code
- Destructuring built-in (e.g., `:final data`)

### 4. **Type Safety Everywhere**

Every state variant is its own type. IDEs provide better autocomplete and type checking.

```dart
state.maybeWhen(
  loaded: (data, metadata, hasChanges) {
    // 'data' is automatically typed as CvData
    // 'metadata' is automatically typed as CvMetadata
    // No manual casting needed!
  },
  orElse: () {},
);
```

### 5. **Easy State Updates with copyWith**

Update nested state easily:

```dart
// Update CV data within loaded state
state.maybeWhen(
  loaded: (data, metadata, hasChanges) {
    emit(CvState.loaded(
      data: data.copyWith(fullName: 'New Name'),
      metadata: metadata,
      hasUnsavedChanges: true,
    ));
  },
  orElse: () {},
);
```

## Recommended Patterns for iCV

### Pattern 1: Cubit for Simple State Management

**Use Cubit when:**
- Simple CRUD operations
- Direct method calls are sufficient
- No complex event transformations needed

**Example:** `CvCubit`, `ThemeCubit`, `TemplateCubit`

### Pattern 2: Full Bloc for Complex Event Handling

**Use full Bloc when:**
- Multiple events trigger same state change
- Need event debouncing/throttling
- Complex event-to-state transformations

**Example:** Could be used for `AuthBloc` if you need complex auth flows

### Pattern 3: Async State Variants

Always include loading and error states:

```dart
@freezed
sealed class AsyncState<T> with _$AsyncState<T> {
  const factory AsyncState.initial() = AsyncInitial<T>;
  const factory AsyncState.loading() = AsyncLoading<T>;
  const factory AsyncState.success(T data) = AsyncSuccess<T>;
  const factory AsyncState.error(String message) = AsyncError<T>;
}
```

### Pattern 4: Previous State Preservation

Store previous state in error cases for recovery:

```dart
const factory CvState.error({
  required String message,
  CvData? previousData,  // Allow recovery
  CvMetadata? previousMetadata,
}) = CvError;
```

## UI Integration Patterns

### BlocBuilder with Pattern Matching (Recommended)

```dart
BlocBuilder<CvCubit, CvState>(
  builder: (context, state) {
    return switch (state) {
      CvInitial() => const InitialView(),
      CvLoading() => const LoadingView(),
      CvLoaded(:final data) => CvContentView(data: data),
      CvError(:final message) => ErrorView(message: message),
    };
  },
)
```

### BlocConsumer for Side Effects

```dart
BlocConsumer<CvCubit, CvState>(
  listener: (context, state) {
    state.maybeWhen(
      saved: (_, __) => showSnackBar('Saved!'),
      error: (message, _, __) => showSnackBar('Error: $message'),
      orElse: () {},
    );
  },
  builder: (context, state) => /* UI */,
)
```

### BlocSelector for Performance

Only rebuild when specific value changes:

```dart
BlocSelector<CvCubit, CvState, bool>(
  selector: (state) => state.maybeWhen(
    loaded: (_, __, hasChanges) => hasChanges,
    orElse: () => false,
  ),
  builder: (context, hasChanges) {
    return if (hasChanges) SaveButton() else SizedBox();
  },
)
```

## Common Patterns & Helpers

### Extracting Values from State

```dart
// Using whenOrNull (returns null if not matching)
final email = state.whenOrNull(
  authenticated: (userId, email, displayName) => email,
);

// Using maybeWhen
final isLoading = state.maybeWhen(
  loading: () => true,
  orElse: () => false,
);

// Using pattern matching (Dart 3+)
final data = switch (state) {
  CvLoaded(:final data) => data,
  _ => null,
};
```

### State Transitions

```dart
// Safe state updates
void updateCvData(CvData newData) {
  final currentState = state;
  currentState.maybeWhen(
    loaded: (_, metadata, __) {
      emit(CvState.loaded(
        data: newData,
        metadata: metadata,
        hasUnsavedChanges: true,
      ));
    },
    orElse: () {
      // Handle case where no CV is loaded
      emit(CvState.error(message: 'No CV loaded'));
    },
  );
}
```

## Performance Considerations

1. **Use BlocSelector** for widgets that only need specific state values
2. **Use const constructors** for state variants when possible
3. **Avoid unnecessary state emissions** - check if state actually changed
4. **Consider hydrated_bloc** for state persistence (automatic serialization)

## Testing Benefits

Freezed states are easy to test:

```dart
test('CvCubit loads CV successfully', () async {
  final cubit = CvCubit();
  await cubit.loadCv('cv-1');
  
  expect(
    cubit.state,
    isA<CvLoaded>().having((s) => s.data.fullName, 'fullName', 'John Doe'),
  );
});
```

## Summary

Freezed + BLoC gives you:
- ✅ Type-safe state management
- ✅ Compile-time exhaustiveness checking
- ✅ Immutable states (bug prevention)
- ✅ Modern pattern matching syntax
- ✅ Easy testing
- ✅ Great IDE support

This combination is particularly powerful because:
1. Freezed generates all the boilerplate
2. Pattern matching makes code readable and maintainable
3. The compiler catches errors before runtime
4. States are naturally serializable (for persistence)

For iCV, this means:
- Fewer bugs in state management
- Easier to add new states
- Better developer experience
- More maintainable codebase

