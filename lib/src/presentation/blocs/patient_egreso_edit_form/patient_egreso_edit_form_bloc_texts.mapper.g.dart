// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_egreso_edit_form_bloc_texts.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: PatientEgresoEditFormBlocTextsMapper)
class PatientEgresoEditFormBlocTextsMapperImpl
    extends PatientEgresoEditFormBlocTextsMapper {
  PatientEgresoEditFormBlocTextsMapperImpl() : super();

  @override
  PatientEgresoEditFormBlocTexts fromMessages(Messages messages) {
    final patientegresoeditformbloctexts = PatientEgresoEditFormBlocTexts(
        validatorRequired: messages.validatorRequired,
        validatorEmail: messages.validatorEmail,
        validatorLength: messages.validatorLength,
        validatorInteger: messages.validatorInteger,
        validatorNumber: messages.validatorNumber,
        validatorIntegerNonNegative: messages.validatorIntegerNonNegative);
    return patientegresoeditformbloctexts;
  }
}
