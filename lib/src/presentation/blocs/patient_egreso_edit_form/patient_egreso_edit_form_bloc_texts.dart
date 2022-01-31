import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:injectable/injectable.dart';

class PatientEgresoEditFormBlocTexts {
  PatientEgresoEditFormBlocTexts({
    required this.validatorRequired,
    required this.validatorEmail,
    required this.validatorLength,
    required this.validatorInteger,
    required this.validatorNumber,
    required this.validatorIntegerNonNegative,
  });

  final String validatorRequired;
  final String validatorEmail;
  final String validatorLength;
  final String validatorInteger;
  final String validatorNumber;
  final String validatorIntegerNonNegative;
}

@lazySingleton
class PatientEgresoEditFormBlocTextsMapper {
  PatientEgresoEditFormBlocTexts fromMessages(Messages messages) {
    return PatientEgresoEditFormBlocTexts(
      validatorRequired: messages.validatorRequired,
      validatorEmail: messages.validatorEmail,
      validatorLength: messages.validatorLength,
      validatorInteger: messages.validatorInteger,
      validatorNumber: messages.validatorNumber,
      validatorIntegerNonNegative: messages.validatorIntegerNonNegative,
    );
  }
}
