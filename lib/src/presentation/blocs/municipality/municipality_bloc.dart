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
  }) : super(const MunicipalityState.municipalityState()) {
    on<ProvincesRequested>((event, emit) async {
      final either = await provinceService.getProvinces();
      await either.fold(
        (error) async {
          return Future.delayed(
            const Duration(seconds: 3),
            () => add(const MunicipalityEvent.provincesRequested()),
          );
        },
        (entity) async => emit(
          MunicipalityState.municipalityState(
            provinces: entity,
          ),
        ),
      );
    });
    on<MunicipalityRebuild>(
      (event, emit) {
        emit(state.copyWith(rebuildTrueOrFalse: !state.rebuildTrueOrFalse));
      },
    );
  }

  final IProvinceService provinceService;
}
