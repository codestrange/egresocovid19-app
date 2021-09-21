import 'package:egresocovid19/src/domain/entities/pathological_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pathologicalhistory_bloc.freezed.dart';
part 'pathologicalhistory_event.dart';
part 'pathologicalhistory_state.dart';

@injectable
class PathologicalhistoryBloc
    extends Bloc<PathologicalHistoryEvent, PathologicalHistoryState> {
  PathologicalhistoryBloc() : super(const PathologicalHistoryCurrentState([])) {
    on<PathologyInfoAdded>((event, emit) {
      final newHistory = state.pathologicalHistory.toList()
        ..removeWhere((element) => element.name == event.pathological.name)
        ..add(event.pathological);
      emit(state.copyWith(pathologicalHistory: newHistory));
    });
    on<PathologyInfoRemoved>((event, emit) {
      final newHistory = state.pathologicalHistory.toList()
        ..removeWhere((element) => element.name == event.pathologicalName);
      emit(state.copyWith(pathologicalHistory: newHistory));
    });
    on<PathologyInfoCleared>((event, emit) {
      emit(state.copyWith(pathologicalHistory: []));
    });
  }
}
