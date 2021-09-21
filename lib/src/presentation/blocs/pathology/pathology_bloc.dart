import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pathology_bloc.freezed.dart';
part 'pathology_event.dart';
part 'pathology_state.dart';

@injectable
class PathologyBloc extends Bloc<PathologyEvent, PathologyState> {
  PathologyBloc() : super(const PathologyState.state()) {
    on<TreatmentPathologyChanged>(
        (event, emit) => emit(state.copyWith(treatment: event.treatment)));
    on<PathologyNameChanged>(
        (event, emit) => emit(state.copyWith(pathology: event.pathology)));
    on<PathologyCleared>(
        (event, emit) => emit(state.copyWith(pathology: '', treatment: '')));
  }
}
