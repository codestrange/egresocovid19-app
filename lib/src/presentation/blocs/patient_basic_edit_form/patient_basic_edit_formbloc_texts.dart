import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:injectable/injectable.dart';

class PatientBasicEditFormBlocTexts {
  PatientBasicEditFormBlocTexts({
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
class PatientBasicEditFormBlocTextsMapper {
  PatientBasicEditFormBlocTexts fromMessages(Messages messages) {
    return PatientBasicEditFormBlocTexts(
      validatorRequired: messages.validatorRequired,
      validatorEmail: messages.validatorEmail,
      validatorLength: messages.validatorLength,
      validatorInteger: messages.validatorInteger,
      validatorNumber: messages.validatorNumber,
      validatorIntegerNonNegative: messages.validatorIntegerNonNegative,
    );
  }
}
