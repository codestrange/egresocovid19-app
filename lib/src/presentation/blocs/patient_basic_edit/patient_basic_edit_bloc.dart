import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/services/patient_service.dart';

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
  }) : super(const PatientBasicEditState.initial()) {
    on<PatientBasicEditEvent>((event, emit) {
      event.when(
        fetch: (patientId) async {
          final eitherPatient =
              await patientService.getPatient(patientId: patientId);
          eitherPatient.fold(
            (error) => emit(PatientBasicEditState.failure(error: error)),
            (patient) =>
                emit(PatientBasicEditState.patientEdit(patient: patient)),
          );
        },
      );
    });
  }

  final IPatientService patientService;
}
