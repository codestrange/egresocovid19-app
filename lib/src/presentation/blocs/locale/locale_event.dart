part of 'locale_bloc.dart';

@freezed
class LocaleEvent with _$LocaleEvent {
  const factory LocaleEvent.change({required String locale}) =
      _LocaleEventChange;
}
