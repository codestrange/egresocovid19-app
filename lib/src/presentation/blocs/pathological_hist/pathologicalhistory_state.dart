part of 'pathologicalhistory_bloc.dart';

@freezed
class PathologicalHistoryState with _$PathologicalHistoryState {
  const factory PathologicalHistoryState.state(
    List<PathologicalEntity> pathologicalHistory,
  ) = PathologicalHistoryCurrentState;
}
