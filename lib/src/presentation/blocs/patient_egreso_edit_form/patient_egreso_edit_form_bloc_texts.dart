import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:injectable/injectable.dart';
import 'package:smartstruct/smartstruct.dart';

part 'patient_egreso_edit_form_bloc_texts.mapper.g.dart';

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

@Mapper(useInjection: true)
abstract class PatientEgresoEditFormBlocTextsMapper {
  PatientEgresoEditFormBlocTexts fromMessages(Messages messages);
}
