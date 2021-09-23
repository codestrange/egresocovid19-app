import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'income_bloc.freezed.dart';
part 'income_event.dart';
part 'income_state.dart';

@injectable
class IncomeBloc extends Bloc<IncomeEvent, IncomeState> {
  IncomeBloc() : super(const IncomeState.state()) {
    on<DaysChanged>(
      (event, emit) => emit(state.copyWith(days: event.days)),
    );
    on<IncomeChanged>(
      (event, emit) => emit(state.copyWith(income: event.income)),
    );
    on<IncomeCleared>(
      (event, emit) => emit(state.copyWith(income: null, days: 0)),
    );
  }
}
