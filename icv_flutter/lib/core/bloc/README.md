# BLoC + Freezed Integration Guide

This directory contains BLoC/Cubit implementations using Freezed for state management. This approach provides type-safe, immutable state management with excellent developer experience.

## Benefits of Freezed + BLoC

### 1. **Union Types for States**
Use sealed classes to represent all possible states (Initial, Loading, Success, Error) with compile-time exhaustiveness checking.

### 2. **Immutability by Default**
All states are immutable, preventing accidental mutations and bugs.

### 3. **Pattern Matching**
Use Dart 3's pattern matching with `switch` expressions for clean, readable state handling in UI.

### 4. **Type Safety**
The compiler ensures you handle all possible states, reducing runtime errors.

### 5. **Easy State Updates**
Use `copyWith` for creating new state instances with updated values.

## Pattern Structure

### State Pattern (using sealed classes)

```dart
@freezed
sealed class MyBlocState with _$MyBlocState {
  const factory MyBlocState.initial() = MyBlocInitial;
  const factory MyBlocState.loading() = MyBlocLoading;
  const factory MyBlocState.success(Data data) = MyBlocSuccess;
  const factory MyBlocState.error(String message) = MyBlocError;
}
```

### Cubit Pattern (Recommended)

For simpler use cases, use **Cubit** instead of full Bloc. Cubit is lighter and perfect when you don't need complex event handling:

```dart
class MyCubit extends Cubit<MyBlocState> {
  MyCubit() : super(const MyBlocState.initial());
  
  Future<void> loadData() async {
    emit(const MyBlocState.loading());
    try {
      final data = await repository.getData();
      emit(MyBlocState.success(data));
    } catch (e) {
      emit(MyBlocState.error(e.toString()));
    }
  }
}
```

### Full Bloc Pattern (for complex event handling)

For more complex scenarios with many events:

```dart
// Events
@freezed
sealed class MyBlocEvent with _$MyBlocEvent {
  const factory MyBlocEvent.load() = MyBlocLoadEvent;
  const factory MyBlocEvent.refresh() = MyBlocRefreshEvent;
  const factory MyBlocEvent.update(Data data) = MyBlocUpdateEvent;
}

// Bloc
class MyBloc extends Bloc<MyBlocEvent, MyBlocState> {
  MyBloc() : super(const MyBlocState.initial()) {
    on<MyBlocLoadEvent>(_onLoad);
    on<MyBlocRefreshEvent>(_onRefresh);
    on<MyBlocUpdateEvent>(_onUpdate);
  }
  
  Future<void> _onLoad(MyBlocLoadEvent event, Emitter<MyBlocState> emit) async {
    emit(const MyBlocState.loading());
    // ... implementation
  }
}
```

## UI Usage with Pattern Matching

```dart
BlocBuilder<MyCubit, MyBlocState>(
  builder: (context, state) {
    return switch (state) {
      MyBlocInitial() => const Text('Initial'),
      MyBlocLoading() => const CircularProgressIndicator(),
      MyBlocSuccess(data: final data) => Text('Data: $data'),
      MyBlocError(message: final message) => Text('Error: $message'),
    };
  },
)
```

## Recommended Approach for iCV

For this project, we recommend using **Cubit** for most use cases because:
- Simpler API (no need for event classes)
- Less boilerplate
- Better for most CRUD operations
- Still provides all benefits of immutability and type safety

Use **full Bloc** only when:
- You need complex event transformations
- You need event debouncing/throttling
- You're handling streams of events
- Multiple sources trigger the same state change

## Implementation Checklist

- [x] CvCubit - Manage CV data loading, saving, editing
- [x] ThemeCubit - Manage app theme (light/dark mode)
- [x] AuthCubit - Handle authentication state
- [x] TemplateCubit - Manage template selection and loading

## State Persistence

For state persistence, consider:
1. Using `hydrated_bloc` package for automatic persistence
2. Using `BlocObserver` to sync state to local storage
3. Restoring state on app startup in the Cubit constructor

