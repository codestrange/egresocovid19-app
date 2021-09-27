// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_create_bloc_texts.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: PatientCreateBlocTextsMapper)
class PatientCreateBlocTextsMapperImpl extends PatientCreateBlocTextsMapper {
  PatientCreateBlocTextsMapperImpl() : super();

  @override
  PatientCreateBlocTexts fromMessages(Messages messages) {
    final patientcreatebloctexts = PatientCreateBlocTexts(
        validatorRequired: messages.validatorRequired,
        validatorEmail: messages.validatorEmail,
        validatorLength: messages.validatorLength,
        validatorInteger: messages.validatorInteger,
        validatorNumber: messages.validatorNumber,
        validatorIntegerNonNegative: messages.validatorIntegerNonNegative);
    return patientcreatebloctexts;
  }
}
