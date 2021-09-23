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
  PatientViewBloc() : super(const PatientViewState.initial()) {
    on<PatientViewEvent>((event, emit) {
      event.when(
        fetch: (patientId) {},
      );
    });
  }
}
