import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'patient_create_bloc.freezed.dart';
part 'patient_create_event.dart';
part 'patient_create_state.dart';

abstract class IPatientCreateBloc
    extends Bloc<PatientCreateEvent, PatientCreateState> {
  IPatientCreateBloc(PatientCreateState initialState) : super(initialState);
}

@Injectable(as: IPatientCreateBloc)
class PatientCreateBloc extends IPatientCreateBloc {
  PatientCreateBloc() : super(const PatientCreateState.initial()) {
    on<PatientCreateEvent>((event, emit) {
      event.when(
        started: () {},
      );
    });
  }
}
