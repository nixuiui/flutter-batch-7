import 'package:flutter/material.dart';
import 'package:flutter_batch_7/pages/day_6/blocs/theme_state.dart';
import 'package:flutter_batch_7/pages/day_7/data/local_storage/theme_local_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Cubit<ThemeState> {

  final ThemeLocalStorage _themeLocalStorage;

  ThemeBloc(this._themeLocalStorage) : super(ThemeState());

  void init() {
    final savedThemeMode = _themeLocalStorage.getThemeMode();
    emit(state.copyWith(themeMode: savedThemeMode));
  }

  void toggleTheme() {
    final newThemeMode = state.themeMode == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
    _themeLocalStorage.setThemeMode(newThemeMode);
    emit(state.copyWith(themeMode: newThemeMode));
  }

}