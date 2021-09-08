part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.changed({
    required ThemeMode mode,
    required ThemeData light,
    required ThemeData dark,
  }) = _ThemeStateChanged;
}
