import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'patient_basic_edit_bloc.freezed.dart';
part 'patient_basic_edit_event.dart';
part 'patient_basic_edit_state.dart';

abstract class IPatientBasicEditBloc
    extends Bloc<PatientBasicEditEvent, PatientBasicEditState> {
  IPatientBasicEditBloc(PatientBasicEditState initialState)
      : super(initialState);
}

@Injectable(as: IPatientBasicEditBloc)
class PatientBasicEditBloc extends IPatientBasicEditBloc {
  PatientBasicEditBloc({
    required this.patientService,
    required this.provinceService,
  }) : super(const PatientBasicEditState.initial()) {
    on<PatientBasicEditEvent>((event, emit) async {
      emit(const PatientBasicEditState.initial());
      await event.when(
        fetch: (patientId) async {
          final eitherPatient = await patientService.getPatient(
            patientId: patientId,
          );
          await eitherPatient.fold(
            (error) async => emit(PatientBasicEditState.failure(error: error)),
            (patient) async {
              final provincesEither = await provinceService.getProvinces();
              List<ProvinceEntity>? provinces;
              provincesEither.fold(
                (error) => emit(PatientBasicEditState.failure(error: error)),
                (r) => provinces = r,
              );
              if (provincesEither.isLeft()) {
                return;
              }
              // Extracting province entity
              final provEnt = provinces!
                  .where((p) => p.name == patient.province)
                  .firstOrNull;
              if (provEnt == null) {
                emit(
                  const PatientBasicEditState.failure(
                    error: ErrorEntity(errorCode: '', message: ''),
                  ),
                );
                return;
              }
              // Extracting municipality entity
              final muncEnt = provEnt.municipalities
                  .where((element) => element.name == patient.municipality)
                  .firstOrNull;
              if (muncEnt == null) {
                emit(
                  const PatientBasicEditState.failure(
                    error: ErrorEntity(errorCode: '', message: ''),
                  ),
                );
                return;
              }
              emit(
                PatientBasicEditState.patientEdit(
                  patientEditFetchData: PatientEditFetchData(
                    patientGetDetailEntity: patient,
                    municipality: muncEnt,
                    province: provEnt,
                  ),
                ),
              );
            },
          );
        },
      );
    });
  }

  final IPatientService patientService;
  final IProvinceService provinceService;
}

class PatientEditFetchData {
  PatientEditFetchData({
    required this.patientGetDetailEntity,
    required this.province,
    required this.municipality,
  });

  final PatientGetDetailEntity patientGetDetailEntity;
  final ProvinceEntity province;
  final MunicipalityEntity municipality;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PatientEditFetchData &&
        other.patientGetDetailEntity == patientGetDetailEntity &&
        other.province == province &&
        other.municipality == municipality;
  }

  @override
  int get hashCode =>
      patientGetDetailEntity.hashCode ^
      province.hashCode ^
      municipality.hashCode;
}
