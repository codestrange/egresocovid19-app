part of 'income_bloc.dart';

@freezed
class IncomeEvent with _$IncomeEvent {
  const factory IncomeEvent.daysChanged(int days) = DaysChanged;
  const factory IncomeEvent.incomeChanged(Income income) = IncomeChanged;

  const factory IncomeEvent.cleared() = IncomeCleared;
}
