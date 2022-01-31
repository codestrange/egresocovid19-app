import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/theming/dark.dart';
import 'package:egresocovid19/src/presentation/theming/light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

abstract class IThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  IThemeBloc(ThemeState initialState) : super(initialState);
}

@Injectable(as: IThemeBloc)
class ThemeBloc extends IThemeBloc {
  ThemeBloc(this.themeService)
      : super(
          ThemeState.changed(
            mode: themeService.getThemeMode(),
            light: lightTheme,
            dark: darkTheme,
          ),
        ) {
    on<ThemeEvent>((event, emit) {
      themeService.setThemeMode(event.mode);
      emit(
        ThemeState.changed(
          mode: event.mode,
          light: lightTheme,
          dark: darkTheme,
        ),
      );
    });
  }

  final IThemeService themeService;
}
