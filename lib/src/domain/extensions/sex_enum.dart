import 'package:egresocovid19/src/domain/enums/enums.dart';

extension SexEnumExtension on Sex {
  static Sex fromString(String value) =>
      Sex.values.where((element) => element.toString() == value).first;
}
