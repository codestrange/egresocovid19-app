import 'package:egresocovid19/src/domain/enums/blood_type_enum.dart';

extension BloodTypeExtension on BloodType {
  String toPrettyString() =>
      toString().replaceAll('minus', '-').replaceAll('plus', '+');

  static BloodType fromString(String prettyString) => BloodType.values
      .where((element) => element.toPrettyString() == prettyString)
      .first;
}
