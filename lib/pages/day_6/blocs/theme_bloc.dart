import 'package:flutter/material.dart';
import 'package:flutter_batch_7/pages/day_6/blocs/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Cubit<ThemeState> {

  ThemeBloc() : super(ThemeState());

  void toggleTheme() {
    final newThemeMode = state.themeMode == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
    emit(state.copyWith(themeMode: newThemeMode));
  }

}