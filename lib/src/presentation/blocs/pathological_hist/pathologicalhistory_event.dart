part of 'pathologicalhistory_bloc.dart';

@freezed
class PathologicalHistoryEvent with _$PathologicalHistoryEvent {
  const factory PathologicalHistoryEvent.added(
      PathologicalEntity pathological) = PathologyInfoAdded;
  const factory PathologicalHistoryEvent.removed(String pathologicalName) =
      PathologyInfoRemoved;
  const factory PathologicalHistoryEvent.cleared() = PathologyInfoCleared;
}
