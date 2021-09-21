part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetched({
    required String query,
  }) = _Fetched;
}
