import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ThemeChanged>(_onThemeChanged);
  }

  void _onThemeChanged(
    ThemeChanged event,
    Emitter<ThemeState> emit,
  ) {
    emit(state.copyWith(
      themeMode: event.themeMode,
    ));
  }
}
