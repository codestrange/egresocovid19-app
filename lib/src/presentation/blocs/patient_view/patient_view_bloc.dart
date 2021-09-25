import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/services/patient_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'patient_view_bloc.freezed.dart';
part 'patient_view_event.dart';
part 'patient_view_state.dart';

abstract class IPatientViewBloc
    extends Bloc<PatientViewEvent, PatientViewState> {
  IPatientViewBloc(PatientViewState initialState) : super(initialState);
}

@Injectable(as: IPatientViewBloc)
class PatientViewBloc extends IPatientViewBloc {
  PatientViewBloc(this.patientService)
      : super(const PatientViewState.fetchInProgress()) {
    on<PatientViewEvent>((event, emit) async {
      await event.when(
        fetch: (patientId) async {
          emit(const PatientViewState.fetchInProgress());
          final result = await patientService.getPatient(patientId: patientId);
          emit(
            result.fold(
              (error) => PatientViewState.fetchFailure(error: error.message),
              (patient) => PatientViewState.fetchSuccess(patient: patient),
            ),
          );
        },
      );
    });
  }

  final IPatientService patientService;
}
