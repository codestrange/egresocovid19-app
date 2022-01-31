import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'locale_bloc.freezed.dart';
part 'locale_event.dart';
part 'locale_state.dart';

abstract class ILocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  ILocaleBloc(LocaleState initialState) : super(initialState);
}

@Injectable(as: ILocaleBloc)
class LocaleBloc extends ILocaleBloc {
  LocaleBloc(this.localeService)
      : super(
          LocaleState.changed(
            locale: localeService.getLocale().fold(
                  (l) => Messages.supportedLocales.first,
                  (r) =>
                      Messages.supportedLocales
                          .where((e) => e.languageCode == r)
                          .firstOrNull ??
                      Messages.supportedLocales.first,
                ),
          ),
        ) {
    on<LocaleEvent>((event, emit) {
      localeService.setLocale(event.locale);
      emit(
        LocaleState.changed(
          locale: Messages.supportedLocales
                  .where((e) => e.languageCode == event.locale)
                  .firstOrNull ??
              Messages.supportedLocales.first,
        ),
      );
    });
  }

  final ILocaleService localeService;
}
