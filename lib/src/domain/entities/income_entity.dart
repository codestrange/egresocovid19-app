import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'income_entity.freezed.dart';

@freezed
class IncomeEntity with _$IncomeEntity {
  const factory IncomeEntity({
    required Income income,
    required int days,
  }) = _BaseIncomeEntity;
}
