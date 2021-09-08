part of 'locale_bloc.dart';

@freezed
class LocaleState with _$LocaleState {
  const factory LocaleState.changed({
    required Locale locale,
  }) = _LocaleStateChanged;
}
