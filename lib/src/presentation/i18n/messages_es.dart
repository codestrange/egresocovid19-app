


import 'messages.dart';

/// The translations for Spanish Castilian (`es`).
class MessagesEs extends Messages {
  MessagesEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Egreso COVID-19';

  @override
  String get homePageTitle => 'Inicio';

  @override
  String get homeDrawerTitle => 'Egreso\nCOVID-19';

  @override
  String get homeWelcomeMessage => 'Bienvenido a Egreso COVID-19\nEn la caja de texto de arriba puede buscar pacientes por nombre o carnet de identidad.';

  @override
  String get homeNotFoundMessage => 'No se encontraron pacientes';

  @override
  String get homeErrorMessage => 'Error al cargar los pacientes';

  @override
  String get homeTooltipDetail => 'Ver detalles del paciente';

  @override
  String get homeTooltipAdd => 'Agregar paciente';

  @override
  String get homeCloseSession => 'Cerrar sesión';

  @override
  String get homeSearchHint => 'Buscar por nombre o carnet';

  @override
  String get loginPageTitle => 'Iniciar Sesión';

  @override
  String get loginSubmitButton => 'Iniciar Sesión';

  @override
  String get loginError => 'Correo o contraseña incorrectos';

  @override
  String get checkingPageTitle => 'Comprobando';

  @override
  String get notFoundPageTitle => 'Página desconocida';

  @override
  String get notFoundMessage => 'Página desconocida, si considera que es un error contacte con el equipo de soporte.';

  @override
  String get notFoundButtonText => 'Ir a la página inicial';

  @override
  String get patientCreatePageTitle => 'Nuevo';

  @override
  String get patientCreateAppBarTitle => 'Nuevo Paciente';

  @override
  String get patientCreateSubmitText => 'Añadir Paciente';

  @override
  String get patientCreateFieldFirstname => 'Nombre(s)';

  @override
  String get patientCreateFieldLastname => 'Apellido(s)';

  @override
  String get patientCreateFieldCI => 'Carnet de identidad';

  @override
  String get patientCreateFieldSex => 'Sexo';

  @override
  String get patientCreateFieldAge => 'Edad';

  @override
  String get patientCreateFieldSkinColor => 'Color de Piel';

  @override
  String get patientCreateFieldBloodType => 'Tipo de Sangre';

  @override
  String get patientCreateFieldBloodTypeUnknow => 'Desconocido';

  @override
  String get patientCreateFieldProvince => 'Provincia';

  @override
  String get patientCreateFieldMunicipality => 'Municipio';

  @override
  String get patientCreateFieldAddress => 'Dirección';

  @override
  String get patientCreateFieldPolyclinic => 'Policlinico';

  @override
  String get patientCreateFieldSurgery => 'Consultorio';

  @override
  String get patientCreateFieldPopularCouncil => 'Consejo Popular';

  @override
  String get patientCreateFieldNeighborhood => 'Reparto';

  @override
  String get patientCreateFieldBlockNumber => 'No. Manzana';

  @override
  String get patientCreateFieldPersonalPathologicalHistory => 'Patologías Personales';

  @override
  String get patientCreateFieldFamilyPathologicalHistory => 'Patologías Familiares';

  @override
  String get patientCreateSuccessMessage => 'Información de paciente añadida.';

  @override
  String get patientViewPageTitle => 'Detalles';

  @override
  String get patientViewAppBarTitle => 'Detalles del Paciente';

  @override
  String get patientViewFieldFirstnameAndLastname => 'Nombre(s) y Apellido(s)';

  @override
  String get patientViewFieldCI => 'Carnet de identidad';

  @override
  String get patientViewFieldSex => 'Sexo';

  @override
  String get patientViewFieldAge => 'Edad';

  @override
  String get patientViewFieldSkinColor => 'Color de Piel';

  @override
  String get patientViewFieldBloodType => 'Tipo de Sangre';

  @override
  String get patientViewFieldBloodTypeUnknow => 'Desconocido';

  @override
  String get patientViewFieldProvince => 'Provincia';

  @override
  String get patientViewFieldMunicipality => 'Municipio';

  @override
  String get patientViewFieldAddress => 'Dirección';

  @override
  String get patientViewFieldPolyclinic => 'Policlinico';

  @override
  String get patientViewFieldSurgery => 'Consultorio';

  @override
  String get patientViewFieldPopularCouncil => 'Consejo Popular';

  @override
  String get patientViewFieldNeighborhood => 'Reparto';

  @override
  String get patientViewFieldBlockNumber => 'No. Manzana';

  @override
  String get patientViewFieldPersonalPathologicalHistory => 'Patologías Personales';

  @override
  String get patientViewFieldFamilyPathologicalHistory => 'Patologías Familiares';

  @override
  String get patientViewFieldPathologicalTitle => 'Patología';

  @override
  String get patientViewFieldPathologicalSubtitle => 'Tratamientos';

  @override
  String get patientViewFieldPersonalPathologicalHistoryEmpty => 'Sin patologias personales';

  @override
  String get patientViewFieldFamilyPathologicalHistoryEmpty => 'Sin patologias familiares';

  @override
  String get patientViewFieldEgresoTitle => 'Información de Egreso';

  @override
  String get patientViewFieldEgresoDetectionDate => 'Fecha de detección';

  @override
  String get patientViewFieldEgresoSymptoms => 'Sintomas';

  @override
  String get patientViewFieldEgresoDurationOfSymptoms => 'Duración de los sintomas desde el 1ro';

  @override
  String get patientViewFieldEgresoDiagnosisWay => 'Forma de diagnóstico';

  @override
  String get patientViewFieldEgresoTestUsedInDiagnosis => 'Test usado en el diagnóstico';

  @override
  String get patientViewFieldEgresoDaysFromSymptomsToDiagnosis => 'Cantidad de días entre el inicio de los síntomas y el diagnóstico';

  @override
  String get patientViewFieldEgresoNumberPcrPerformed => 'Número de Test/PCR realizados';

  @override
  String get patientViewFieldEgresoTimeFromDiagnosisToNegativeOrDischarge => 'Tiempo tardado en negativizar o en recibir el alta clínica a partir del diagnóstico';

  @override
  String get patientViewFieldEgresoFormOfContagion => 'Forma de contagio';

  @override
  String get patientViewFieldEgresoWasHePartOfAnEvent => '¿Formó parte de un Evento?';

  @override
  String get patientViewFieldEgresoDidHeWorkInTheAttentionToPositiveCases => '¿Trabajaba en la atención a casos positivos?';

  @override
  String get patientViewFieldEgresoHospitalizationTime => 'Tiempo de hospitalización';

  @override
  String get patientViewFieldEgresoIncomes => 'Ingresos';

  @override
  String get patientViewFieldEgresoContactsFirstLevel => 'Contactos de 1er anillo';

  @override
  String get patientViewFieldEgresoContactsFirstLevelPositives => 'Contactos de 1er anillo positivos';

  @override
  String get patientViewFieldEgresoContactsSecondLevel => 'Contactos de 2do anillo';

  @override
  String get patientViewFieldEgresoContactsSecondLevelPositives => 'Contactos de 2do anillo positivos';

  @override
  String get patientViewFieldEgresoContactsThirdLevel => 'Contactos de 3er anillo';

  @override
  String get patientViewFieldEgresoContactsThirdLevelPositives => 'Contactos de 3er anillo positivos';

  @override
  String get patientViewFieldEgresoTreatmentsReceived => 'Tratamiento recibido';

  @override
  String get patientViewFieldEgresoAntibiotics => 'Antibióticos';

  @override
  String get patientViewFieldEgresoProphylaxis => 'Realizó profilaxis con';

  @override
  String get patientViewFieldEgresoAnotherVaccineAgainstCovid => 'Otra vacuna anti COVID-19';

  @override
  String get patientViewFieldEgresoAftermath => 'Secuelas';

  @override
  String get patientViewFieldEgresoOthersAftermath => 'Otras secuelas';

  @override
  String get patientViewErrorMessage => 'Ha ocurrido un error durante la obtención de la información del paciente.';

  @override
  String get patientViewErrorRetry => 'Reintentar';

  @override
  String get patientEditEgresoPageTitle => 'Editar';

  @override
  String get patientEditEgresoAppBarTitle => 'Editar Información de Egreso';

  @override
  String get patientEditEgresoErrorSaveMessage => 'Ocurrio un error al guardar los datos.';

  @override
  String get patientEditEgresoErrorFetchMessage => 'Ha ocurrido un error al cargar los datos.';

  @override
  String get patientEditEgresoSuccessMessage => 'Información de egreso actualizada.';

  @override
  String get patientEditEgresoRetry => 'Reintentar';

  @override
  String get patientEditEgresoSymptons => 'Síntomas';

  @override
  String get patientEditEgresoDiagnosis => 'Diagnóstico';

  @override
  String get patientEditEgresoFormOfContagion => 'Forma de Contagio';

  @override
  String get patientEditEgresoHospitalizationTime => 'Tiempo de Hospitalización';

  @override
  String get patientEditEgresoHospitalizationTimeDesc => 'Para el tiempo de hospitalización se recomienda la forma compacta número inicial del servicio. Ejemplo:\nUn paciente que estuvo 2 días en cuidado, 3 grave uno critico, 2 grave, 3 cuidado, alta - 2C3G1Cr2G3C.\nUn paciente que estuvo 2 días en cuidado, 3 grave uno critico, y falleció - 2C3G1CrF.';

  @override
  String get patientEditEgresoIncomes => 'Ingreso';

  @override
  String get patientEditEgresoContacts => 'Contactos';

  @override
  String get patientEditEgresoRing => 'Anillo';

  @override
  String get patientEditEgresoRingPositives => '¿Cuántos enfermaron?';

  @override
  String get patientEditEgresoTreatmentsReceived => 'Tratamiento Recibido';

  @override
  String get patientEditEgresoProphylaxis => 'Profilaxis';

  @override
  String get patientEditEgresoAftermath => 'Secuelas';

  @override
  String get patientEditEgresoEdit => 'Editar';

  @override
  String get patientEditEgresoOtherAftermath => 'Otras secuelas';

  @override
  String get patientEditEgresoAnotherVaccines => 'Otras vacunas usadas';

  @override
  String get patientEditEgresoProphylaxisWith => 'Realizó profilaxis con';

  @override
  String get patientEditEgresoAntibiotics => 'Antibióticos';

  @override
  String get patientEditEgresoTreatments => 'Tratamientos';

  @override
  String get patientEditEgresoCount => 'Cantidad';

  @override
  String get patientEditEgresoThirdLevel => 'Tercero';

  @override
  String get patientEditEgresoSecondLevel => 'Segundo';

  @override
  String get patientEditEgresoFirstLevel => 'Primero';

  @override
  String get patientEditEgresoIncomesDetails => 'Detalles de Ingreso';

  @override
  String get patientEditEgresoCompactForm => 'Forma Compacta';

  @override
  String get patientEditEgresoDidHeWorkInTheAttentionToPositiveCases => '¿Trabajó en la atención de casos positivos?';

  @override
  String get patientEditEgresoWasHePartOfAnEvent => '¿Fué parte de un evento de transmición?';

  @override
  String get patientEditEgresoTimeFromDiagnosisToNegativeOrDischarge => 'Tiempo tardado en negativizar o en recibir el alta clínica a partir del diagnóstico';

  @override
  String get patientEditEgresoDaysCount => 'Cant. de días';

  @override
  String get patientEditEgresoNumberPcrPerformed => 'Número de Tests/Pcr realizados';

  @override
  String get patientEditEgresoDaysFromSymptomsToDiagnosis => 'Días con síntomas hasta diagnóstico';

  @override
  String get patientEditEgresoTestUsedInDiagnosis => 'Test usado en el Diagnóstico';

  @override
  String get patientEditEgresoDiagnosisWay => 'Forma de diagnóstico';

  @override
  String get patientEditEgresoDurationOfSymptoms => 'Duración de los síntomas (en días)';

  @override
  String get patientEditEgresoSymptomp => 'Síntoma';

  @override
  String get patientEditEgresoDetectionDate => 'Fecha de detección';

  @override
  String get patientEditBasicPageTitle => 'Editar';

  @override
  String get patientEditBasicAppBarTitle => 'Editar Información Básica';

  @override
  String get patientEditBasicError => 'Error';

  @override
  String get patientEditBasicErrorMessage => 'Ha ocurrido un error';

  @override
  String get patientEditBasicSuccessMessage => 'Información de paciente actualizada.';

  @override
  String get patientEditBasicErrorButtonText => 'Recargar página';

  @override
  String get patientEditBasicSubmmitButtonText => 'Aplicar Cambios';

  @override
  String get patientEditBasicNameInputLabelText => 'Nombres(s)*';

  @override
  String get patientEditBasicLastNameInputLabelText => 'Apellido(s)*';

  @override
  String get patientEditBasicIDInputLabelText => 'Carnet de identidad*';

  @override
  String get patientEditBasicAgeInputLabelText => 'Edad*';

  @override
  String get patientEditBasicSexInputLabelText => 'Sexo*';

  @override
  String get patientEditBasicSkinColorInputLabelText => 'Color de Piel*';

  @override
  String get patientEditBasicBloodTypeInputLabelText => 'Sangre';

  @override
  String get patientEditBasicProvinceInputLabelText => 'Provincia*';

  @override
  String get patientEditBasicMunicipalityInputLabelText => 'Municipio*';

  @override
  String get patientEditBasicAddressInputLabelText => 'Dirección*';

  @override
  String get patientEditBasicPolyclinicInputLabelText => 'Policlínico*';

  @override
  String get patientEditBasicSurgeryInputLabelText => 'Consultorio*';

  @override
  String get patientEditBasicPopularCouncilInputLabelText => 'Consejo Popular*';

  @override
  String get patientEditBasicNeighborhoodInputLabelText => 'Reparto*';

  @override
  String get patientEditBasicBlockInputLabelText => 'No. de Manzana*';

  @override
  String get patientEditBasicPathologicalHistoryInputLabelText => 'Patologías Personales';

  @override
  String get patientEditBasicFamilyPathologicalHistoryInputLabelText => 'Patologías Familiares*';

  @override
  String get multiselectDropDownWidgetTitle => 'Seleccione una o varias opciones';

  @override
  String get multiselectDropDownWidgetCancel => 'Cancelar';

  @override
  String get multiselectDropDownWidgetAccept => 'Aceptar';

  @override
  String get neighborhoodInputWidgetDefaultLabelText => 'Reparto';

  @override
  String get polyclinicInputWidgetDefaultLabelText => 'Policlínico';

  @override
  String get municipalityInputWidgetDefaultLabelText => 'Municipio';

  @override
  String get provinceInputWidgetDefaultLabelText => 'Provincia';

  @override
  String get pathologicalHistoryInputWidgetDefaultLabelText => 'Tratamiento Realizado';

  @override
  String get incomeDaysInputWidgetDefaultLabelText => 'Cant. de días';

  @override
  String get incomeInputWidgetNumberError => 'La cantidad de días debe ser un número';

  @override
  String get incomeInputWidgetNegativeError => 'La cantidad de días debe ser mayor que 0';

  @override
  String get incomeInputWidgetDays => 'días';

  @override
  String get incomeInputWidgetDefaultLabelText => 'Ingreso en';

  @override
  String get pathologicalInputWidgetDefaultLabelText => 'Patología';

  @override
  String get popularCouncilInputWidgetDefaultLabelText => 'Consejo Popular';

  @override
  String get surgeryInputWidgetDefaultLabelText => 'Consultorio';

  @override
  String get emailInputWidgetDefaultHintText => 'Correo';

  @override
  String get passwordInputWidgetDefaultLabelText => 'Contraseña';

  @override
  String get validatorRequired => 'Campo requerido';

  @override
  String get validatorEmail => 'Email invalido';

  @override
  String get validatorLength => 'Longitud invalida';

  @override
  String get validatorInteger => 'Debe ser un número entero';

  @override
  String get validatorNumber => 'Debe ser un número';

  @override
  String get validatorIntegerNonNegative => 'Debe ser un entero no negativo';

  @override
  String get enumSexMale => 'Masculino';

  @override
  String get enumSexFemale => 'Femenino';

  @override
  String get enumSexOther => 'Otro';

  @override
  String get enumBloodTypeABminus => 'AB-';

  @override
  String get enumBloodTypeABplus => 'AB+';

  @override
  String get enumBloodTypeAminus => 'A-';

  @override
  String get enumBloodTypeAplus => 'A+';

  @override
  String get enumBloodTypeBminus => 'B-';

  @override
  String get enumBloodTypeBplus => 'B+';

  @override
  String get enumBloodTypeOminus => 'O-';

  @override
  String get enumBloodTypeOplus => 'O+';

  @override
  String get enumSkinColorWhite => 'Blanco';

  @override
  String get enumSkinColorBlack => 'Negro';

  @override
  String get enumSkinColorOther => 'Otro';

  @override
  String get enumContagionTraveler => 'Viajero';

  @override
  String get enumContagionContact => 'Contacto';

  @override
  String get enumContagionInderterminate => 'Indeterminada';

  @override
  String get enumDiagnosisWayGuardCorps => 'Cuerpo de Guardia';

  @override
  String get enumDiagnosisWayFocusControl => 'Control de Foco';

  @override
  String get enumIncomeHome => 'Hogar';

  @override
  String get enumIncomeIsolationCenter => 'Centro de Aislamiento';

  @override
  String get enumIncomeHospitalRoom => 'Sale del Hospital';

  @override
  String get enumIncomeIntermediateTherapy => 'Terapia Intermedia';

  @override
  String get enumIncomeIntensiveTherapy => 'Terapia Intensiva';

  @override
  String get enumTestDiagnosisAntigenTest => 'Test de Antígenos';

  @override
  String get enumTestDiagnosisBiosensor => 'Biosensor';

  @override
  String get enumTestDiagnosisPCR => 'PCR-RT';

  @override
  String get enumTestDiagnosisIgMIgGAntibodyTest => 'Test de anticuerpo IgM/IgG';

  @override
  String get enumAftermathFatigue => 'Fatiga';

  @override
  String get enumAftermathHeadache => 'Dolor de Cabeza';

  @override
  String get enumAftermathAlopecia => 'Alopecia';

  @override
  String get enumAftermathRespiratorySymptoms => 'Síntomas Respiratorios';

  @override
  String get enumAftermathMuscleBoneNeuropathicPain => 'Dolores musculares y óseos';

  @override
  String get enumAftermathPsychologicalPsychiatricDisorders => 'Desorden Psicológico-Psiquiátrico';

  @override
  String get enumAftermathSexualDisorders => 'Desorden Sexual';

  @override
  String get enumAftermathSleepDisorder => 'Desorden del Sueño';

  @override
  String get enumAftermathPersistenceOfLossOfSmell => 'Perdida del Olfato';

  @override
  String get enumAftermathPersistenceOfLossOfAppetite => 'Perdida del Apetito';

  @override
  String get enumAftermathGastrointestinalSymptoms => 'Síntomas Gastrointestinales';

  @override
  String get enumAftermathDizziness => 'Mareos';

  @override
  String get enumAftermathDesiresToVomit => 'Vómitos';

  @override
  String get enumAftermathOthers => 'Otros';

  @override
  String get enumTreatmentHerferon => 'Herferón';

  @override
  String get enumTreatmentInterferonGeneric => 'Interferón (genérico)';

  @override
  String get enumTreatmentJusvinza => 'Jusvinza';

  @override
  String get enumTreatmentHeberferon => 'Heberferón';

  @override
  String get enumTreatmentFraxiparinLowMolecularWeightHeparins => 'Fraxiparina/Heparinas de bajo peso molecular';

  @override
  String get enumTreatmentNasalferon => 'Nasalferón';

  @override
  String get enumTreatmentPrednisone => 'Prednisona';

  @override
  String get enumTreatmentPrevengovir => 'Prevengovir';

  @override
  String get enumTreatmentBetamethasone => 'Betametasona';

  @override
  String get enumTreatmentItalizumab => 'Italizumab';

  @override
  String get enumProphylaxisPrevengovir => 'Prevengovir';

  @override
  String get enumProphylaxisVimang => 'Vimang';

  @override
  String get enumProphylaxisMoringa => 'Moringa';

  @override
  String get enumProphylaxisBiomodulinT => 'Biomodulina T';

  @override
  String get enumProphylaxisVitaminC => 'Vitamina C';

  @override
  String get enumProphylaxisPolivit => 'Polivit';

  @override
  String get enumProphylaxisTurmeric => 'Cúrcuma';

  @override
  String get enumProphylaxisSoverana2AndPlus => 'Soberana 02 + Soberana PLus';

  @override
  String get enumProphylaxisHoney => 'Miel';

  @override
  String get enumProphylaxisVitaminA => 'Vitamina A';

  @override
  String get enumProphylaxisGinger => 'Géngibre';

  @override
  String get enumProphylaxisSoveranaPlus => 'Soberana Plus';

  @override
  String get enumProphylaxisAbdala => 'Abdala';

  @override
  String get enumProphylaxisCovid19Previously => 'Ya tuvo COVID-19 previamente';
}
