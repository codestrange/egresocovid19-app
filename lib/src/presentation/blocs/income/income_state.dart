part of 'income_bloc.dart';

@freezed
class IncomeState with _$IncomeState {
  const factory IncomeState.state({
    @Default(null) Income? income,
    @Default(0) int days,
  }) = IncomeInputState;
}
