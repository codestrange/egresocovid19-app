// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_basic_edit_formbloc_texts.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: PatientBasicEditFormBlocTextsMapper)
class PatientBasicEditFormBlocTextsMapperImpl
    extends PatientBasicEditFormBlocTextsMapper {
  PatientBasicEditFormBlocTextsMapperImpl() : super();

  @override
  PatientBasicEditFormBlocTexts fromMessages(Messages messages) {
    final patientbasiceditformbloctexts = PatientBasicEditFormBlocTexts(
        validatorRequired: messages.validatorRequired,
        validatorEmail: messages.validatorEmail,
        validatorLength: messages.validatorLength,
        validatorInteger: messages.validatorInteger,
        validatorNumber: messages.validatorNumber,
        validatorIntegerNonNegative: messages.validatorIntegerNonNegative);
    return patientbasiceditformbloctexts;
  }
}
