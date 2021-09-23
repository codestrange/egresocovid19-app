import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'patient_egreso_edit_bloc.freezed.dart';
part 'patient_egreso_edit_event.dart';
part 'patient_egreso_edit_state.dart';

abstract class IPatientEgresoEditBloc
    extends Bloc<PatientEgresoEditEvent, PatientEgresoEditState> {
  IPatientEgresoEditBloc(PatientEgresoEditState initialState)
      : super(initialState);
}

@Injectable(as: IPatientEgresoEditBloc)
class PatientEgresoEditBloc extends IPatientEgresoEditBloc {
  PatientEgresoEditBloc(
    this.patientService,
  ) : super(const PatientEgresoEditState.initial()) {
    on<PatientEgresoEditEvent>((event, emit) {
      event.when(
        fetch: (patientId) async {
          emit(const PatientEgresoEditState.fetchInProgress());

          final result = await patientService.getPatient(patientId: patientId);

          result.fold(
            (l) => emit(PatientEgresoEditState.fetchFailure(l.message)),
            (r) => emit(
              PatientEgresoEditState.fetchSuccess(
                r.dischargeOfPositiveCasesOfCovid19,
              ),
            ),
          );
        },
        update: (patientId, newDischargeData) async {
          emit(PatientEgresoEditState.updateInProgress(newDischargeData));

          final result = await patientService.putPatientEgreso(
            patientId: patientId,
            discharge: newDischargeData,
          );

          result.fold(
            (l) => emit(
              PatientEgresoEditState.updateFailure(
                l.message,
                newDischargeData,
              ),
            ),
            (_) => emit(PatientEgresoEditState.updateSuccess(newDischargeData)),
          );
        },
      );
    });
  }

  final IPatientService patientService;
}
