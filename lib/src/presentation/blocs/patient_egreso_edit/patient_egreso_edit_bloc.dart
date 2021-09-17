import 'package:bloc/bloc.dart';
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
  PatientEgresoEditBloc() : super(const PatientEgresoEditState.initial()) {
    on<PatientEgresoEditEvent>((event, emit) {
      event.when(
        fetch: (patientId) {},
      );
    });
  }
}
