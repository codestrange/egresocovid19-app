import 'dart:async';

import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/services/province_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'municipality_bloc.freezed.dart';
part 'municipality_event.dart';
part 'municipality_state.dart';

@injectable
class MunicipalityBloc extends Bloc<MunicipalityEvent, MunicipalityState> {
  MunicipalityBloc({
    required this.provinceService,
  }) : super(const MunicipalityState.initial()) {
    on<ProvincesRequested>((event, emit) async {
      await state.maybeMap(
        municipalityCodeReady: (state) async => emit(
          MunicipalityState.provinceSelection(provinces: state.provinces),
        ),
        municipalitySelection: (state) async => emit(
          MunicipalityState.provinceSelection(provinces: state.provinces),
        ),
        initial: (_) async {
          emit(const MunicipalityState.inProgress());
          final either = await provinceService.getProvinces();
          await either.fold(
            (error) async {
              return Future.delayed(
                const Duration(seconds: 2),
                () => add(const MunicipalityEvent.provincesRequested()),
              );
            },
            (entity) async {
              emit(MunicipalityState.provinceSelection(provinces: entity));
            },
          );
        },
        orElse: () {},
      );
    });
    on<ProvinceSelected>((event, emit) async {
      state.maybeMap(
        municipalityCodeReady: (state) => emit(
          MunicipalityState.municipalitySelection(
            provinces: state.provinces,
            provinceSelected: state.provinceSelected,
          ),
        ),
        provinceSelection: (state) => emit(
          MunicipalityState.municipalitySelection(
            provinces: state.provinces,
            provinceSelected: event.entity,
          ),
        ),
        orElse: () async {},
      );
    });
    on<MunicipalitySelected>((event, emit) async {
      state.maybeMap(
        municipalityCodeReady: (state) => emit(
          MunicipalityState.municipalityCodeReady(
            provinces: state.provinces,
            provinceSelected: state.provinceSelected,
            municipalitySelected: event.entity,
          ),
        ),
        orElse: () {},
      );
    });
  }

  final IProvinceService provinceService;
}
