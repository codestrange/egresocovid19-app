import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/services/patient_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

abstract class IHomeBloc extends Bloc<HomeEvent, HomeState> {
  IHomeBloc(HomeState initialState) : super(initialState);
}

@Injectable(as: IHomeBloc)
class HomeBloc extends IHomeBloc {
  HomeBloc(this.patientService) : super(const HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) async {
        await event.when(
          fetched: (query) async {
            if (query.isEmpty) {
              emit(const HomeState.initial());
              return;
            }
            emit(const HomeState.fetchInProgress());
            final response = await patientService.getPatients(query: query);
            response.fold(
              (error) => emit(HomeState.fetchFailure(error: error.message)),
              (patients) => emit(
                patients.isEmpty
                    ? const HomeState.fetchSuccessNotFound()
                    : HomeState.fetchSuccess(patients: patients),
              ),
            );
          },
        );
      },
      transformer: (events, mapper) {
        return events.debounceTime(const Duration(seconds: 1)).flatMap(mapper);
      },
    );
  }

  final IPatientService patientService;
}
