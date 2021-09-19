import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
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
    this.patientRepository,
  ) : super(const PatientEgresoEditState.initial()) {
    on<PatientEgresoEditEvent>((event, emit) {
      event.when(
        fetch: (patientId) async {
          emit(const PatientEgresoEditState.fetchInProgress());

          //TODO: Load actual patient discharge data
          const Either<ErrorEntity, DischargeOfPositiveCasesOfCovid19Entity>
              result = Right(DischargeOfPositiveCasesOfCovid19Entity());

          result.fold(
            (l) => emit(PatientEgresoEditState.fetchFailure(l.message)),
            (r) => emit(PatientEgresoEditState.fetchSuccess(r)),
          );
        },
        update: (patientId, newDischargeData) async {
          emit(PatientEgresoEditState.updateInProgress(newDischargeData));

          final result = await patientRepository.updateDischargeData(
              patientId, newDischargeData);

          result.fold(
            (l) => emit(PatientEgresoEditState.updateFailure(l.message)),
            (r) => emit(PatientEgresoEditState.updateSuccess(newDischargeData)),
          );
        },
      );
    });
  }

  IPatientRepository patientRepository;
}
