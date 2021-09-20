part of 'pathology_bloc.dart';

@freezed
class PathologyState with _$PathologyState {
  const factory PathologyState.state({
    @Default('') String pathology,
    @Default('') String treatment,
  }) = PathologyInputState;
}
