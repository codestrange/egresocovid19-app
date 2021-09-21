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
  PatientBasicEditBloc() : super(const PatientBasicEditState.initial()) {
    on<PatientBasicEditEvent>((event, emit) {
      event.when(
        fetch: (patientId) {},
      );
    });
  }
}
