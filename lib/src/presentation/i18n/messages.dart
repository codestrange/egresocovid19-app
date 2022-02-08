
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'messages_es.dart';

/// Callers can lookup localized strings with an instance of Messages returned
/// by `Messages.of(context)`.
///
/// Applications need to include `Messages.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'i18n/messages.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Messages.localizationsDelegates,
///   supportedLocales: Messages.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Messages.supportedLocales
/// property.
abstract class Messages {
  Messages(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Messages? of(BuildContext context) {
    return Localizations.of<Messages>(context, Messages);
  }

  static const LocalizationsDelegate<Messages> delegate = _MessagesDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('es')
  ];

  /// No description provided for @appName.
  ///
  /// In es, this message translates to:
  /// **'Egreso COVID-19'**
  String get appName;

  /// No description provided for @homePageTitle.
  ///
  /// In es, this message translates to:
  /// **'Inicio'**
  String get homePageTitle;

  /// No description provided for @homeDrawerTitle.
  ///
  /// In es, this message translates to:
  /// **'Egreso\nCOVID-19'**
  String get homeDrawerTitle;

  /// No description provided for @homeWelcomeMessage.
  ///
  /// In es, this message translates to:
  /// **'Bienvenido a Egreso COVID-19\nEn la caja de texto de arriba puede buscar pacientes por nombre o carnet de identidad.'**
  String get homeWelcomeMessage;

  /// No description provided for @homeNotFoundMessage.
  ///
  /// In es, this message translates to:
  /// **'No se encontraron pacientes'**
  String get homeNotFoundMessage;

  /// No description provided for @homeErrorMessage.
  ///
  /// In es, this message translates to:
  /// **'Error al cargar los pacientes'**
  String get homeErrorMessage;

  /// No description provided for @homeTooltipDetail.
  ///
  /// In es, this message translates to:
  /// **'Ver detalles del paciente'**
  String get homeTooltipDetail;

  /// No description provided for @homeTooltipAdd.
  ///
  /// In es, this message translates to:
  /// **'Agregar paciente'**
  String get homeTooltipAdd;

  /// No description provided for @homeCloseSession.
  ///
  /// In es, this message translates to:
  /// **'Cerrar sesión'**
  String get homeCloseSession;

  /// No description provided for @homeSearchHint.
  ///
  /// In es, this message translates to:
  /// **'Buscar por nombre o carnet'**
  String get homeSearchHint;

  /// No description provided for @loginPageTitle.
  ///
  /// In es, this message translates to:
  /// **'Iniciar Sesión'**
  String get loginPageTitle;

  /// No description provided for @loginSubmitButton.
  ///
  /// In es, this message translates to:
  /// **'Iniciar Sesión'**
  String get loginSubmitButton;

  /// No description provided for @loginError.
  ///
  /// In es, this message translates to:
  /// **'Correo o contraseña incorrectos'**
  String get loginError;

  /// No description provided for @checkingPageTitle.
  ///
  /// In es, this message translates to:
  /// **'Comprobando'**
  String get checkingPageTitle;

  /// No description provided for @notFoundPageTitle.
  ///
  /// In es, this message translates to:
  /// **'Página desconocida'**
  String get notFoundPageTitle;

  /// No description provided for @notFoundMessage.
  ///
  /// In es, this message translates to:
  /// **'Página desconocida, si considera que es un error contacte con el equipo de soporte.'**
  String get notFoundMessage;

  /// No description provided for @notFoundButtonText.
  ///
  /// In es, this message translates to:
  /// **'Ir a la página inicial'**
  String get notFoundButtonText;

  /// No description provided for @patientCreatePageTitle.
  ///
  /// In es, this message translates to:
  /// **'Nuevo'**
  String get patientCreatePageTitle;

  /// No description provided for @patientCreateAppBarTitle.
  ///
  /// In es, this message translates to:
  /// **'Nuevo Paciente'**
  String get patientCreateAppBarTitle;

  /// No description provided for @patientCreateSubmitText.
  ///
  /// In es, this message translates to:
  /// **'Añadir Paciente'**
  String get patientCreateSubmitText;

  /// No description provided for @patientCreateFieldFirstname.
  ///
  /// In es, this message translates to:
  /// **'Nombre(s)'**
  String get patientCreateFieldFirstname;

  /// No description provided for @patientCreateFieldLastname.
  ///
  /// In es, this message translates to:
  /// **'Apellido(s)'**
  String get patientCreateFieldLastname;

  /// No description provided for @patientCreateFieldCI.
  ///
  /// In es, this message translates to:
  /// **'Carnet de identidad'**
  String get patientCreateFieldCI;

  /// No description provided for @patientCreateFieldSex.
  ///
  /// In es, this message translates to:
  /// **'Sexo'**
  String get patientCreateFieldSex;

  /// No description provided for @patientCreateFieldAge.
  ///
  /// In es, this message translates to:
  /// **'Edad'**
  String get patientCreateFieldAge;

  /// No description provided for @patientCreateFieldSkinColor.
  ///
  /// In es, this message translates to:
  /// **'Color de Piel'**
  String get patientCreateFieldSkinColor;

  /// No description provided for @patientCreateFieldBloodType.
  ///
  /// In es, this message translates to:
  /// **'Tipo de Sangre'**
  String get patientCreateFieldBloodType;

  /// No description provided for @patientCreateFieldBloodTypeUnknow.
  ///
  /// In es, this message translates to:
  /// **'Desconocido'**
  String get patientCreateFieldBloodTypeUnknow;

  /// No description provided for @patientCreateFieldProvince.
  ///
  /// In es, this message translates to:
  /// **'Provincia'**
  String get patientCreateFieldProvince;

  /// No description provided for @patientCreateFieldMunicipality.
  ///
  /// In es, this message translates to:
  /// **'Municipio'**
  String get patientCreateFieldMunicipality;

  /// No description provided for @patientCreateFieldAddress.
  ///
  /// In es, this message translates to:
  /// **'Dirección'**
  String get patientCreateFieldAddress;

  /// No description provided for @patientCreateFieldPolyclinic.
  ///
  /// In es, this message translates to:
  /// **'Policlinico'**
  String get patientCreateFieldPolyclinic;

  /// No description provided for @patientCreateFieldSurgery.
  ///
  /// In es, this message translates to:
  /// **'Consultorio'**
  String get patientCreateFieldSurgery;

  /// No description provided for @patientCreateFieldPopularCouncil.
  ///
  /// In es, this message translates to:
  /// **'Consejo Popular'**
  String get patientCreateFieldPopularCouncil;

  /// No description provided for @patientCreateFieldNeighborhood.
  ///
  /// In es, this message translates to:
  /// **'Reparto'**
  String get patientCreateFieldNeighborhood;

  /// No description provided for @patientCreateFieldBlockNumber.
  ///
  /// In es, this message translates to:
  /// **'No. Manzana'**
  String get patientCreateFieldBlockNumber;

  /// No description provided for @patientCreateFieldPersonalPathologicalHistory.
  ///
  /// In es, this message translates to:
  /// **'Patologías Personales'**
  String get patientCreateFieldPersonalPathologicalHistory;

  /// No description provided for @patientCreateFieldFamilyPathologicalHistory.
  ///
  /// In es, this message translates to:
  /// **'Patologías Familiares'**
  String get patientCreateFieldFamilyPathologicalHistory;

  /// No description provided for @patientCreateSuccessMessage.
  ///
  /// In es, this message translates to:
  /// **'Información de paciente añadida.'**
  String get patientCreateSuccessMessage;

  /// No description provided for @patientViewPageTitle.
  ///
  /// In es, this message translates to:
  /// **'Detalles'**
  String get patientViewPageTitle;

  /// No description provided for @patientViewAppBarTitle.
  ///
  /// In es, this message translates to:
  /// **'Detalles del Paciente'**
  String get patientViewAppBarTitle;

  /// No description provided for @patientViewFieldFirstnameAndLastname.
  ///
  /// In es, this message translates to:
  /// **'Nombre(s) y Apellido(s)'**
  String get patientViewFieldFirstnameAndLastname;

  /// No description provided for @patientViewFieldCI.
  ///
  /// In es, this message translates to:
  /// **'Carnet de identidad'**
  String get patientViewFieldCI;

  /// No description provided for @patientViewFieldSex.
  ///
  /// In es, this message translates to:
  /// **'Sexo'**
  String get patientViewFieldSex;

  /// No description provided for @patientViewFieldAge.
  ///
  /// In es, this message translates to:
  /// **'Edad'**
  String get patientViewFieldAge;

  /// No description provided for @patientViewFieldSkinColor.
  ///
  /// In es, this message translates to:
  /// **'Color de Piel'**
  String get patientViewFieldSkinColor;

  /// No description provided for @patientViewFieldBloodType.
  ///
  /// In es, this message translates to:
  /// **'Tipo de Sangre'**
  String get patientViewFieldBloodType;

  /// No description provided for @patientViewFieldBloodTypeUnknow.
  ///
  /// In es, this message translates to:
  /// **'Desconocido'**
  String get patientViewFieldBloodTypeUnknow;

  /// No description provided for @patientViewFieldProvince.
  ///
  /// In es, this message translates to:
  /// **'Provincia'**
  String get patientViewFieldProvince;

  /// No description provided for @patientViewFieldMunicipality.
  ///
  /// In es, this message translates to:
  /// **'Municipio'**
  String get patientViewFieldMunicipality;

  /// No description provided for @patientViewFieldAddress.
  ///
  /// In es, this message translates to:
  /// **'Dirección'**
  String get patientViewFieldAddress;

  /// No description provided for @patientViewFieldPolyclinic.
  ///
  /// In es, this message translates to:
  /// **'Policlinico'**
  String get patientViewFieldPolyclinic;

  /// No description provided for @patientViewFieldSurgery.
  ///
  /// In es, this message translates to:
  /// **'Consultorio'**
  String get patientViewFieldSurgery;

  /// No description provided for @patientViewFieldPopularCouncil.
  ///
  /// In es, this message translates to:
  /// **'Consejo Popular'**
  String get patientViewFieldPopularCouncil;

  /// No description provided for @patientViewFieldNeighborhood.
  ///
  /// In es, this message translates to:
  /// **'Reparto'**
  String get patientViewFieldNeighborhood;

  /// No description provided for @patientViewFieldBlockNumber.
  ///
  /// In es, this message translates to:
  /// **'No. Manzana'**
  String get patientViewFieldBlockNumber;

  /// No description provided for @patientViewFieldPersonalPathologicalHistory.
  ///
  /// In es, this message translates to:
  /// **'Patologías Personales'**
  String get patientViewFieldPersonalPathologicalHistory;

  /// No description provided for @patientViewFieldFamilyPathologicalHistory.
  ///
  /// In es, this message translates to:
  /// **'Patologías Familiares'**
  String get patientViewFieldFamilyPathologicalHistory;

  /// No description provided for @patientViewFieldPathologicalTitle.
  ///
  /// In es, this message translates to:
  /// **'Patología'**
  String get patientViewFieldPathologicalTitle;

  /// No description provided for @patientViewFieldPathologicalSubtitle.
  ///
  /// In es, this message translates to:
  /// **'Tratamientos'**
  String get patientViewFieldPathologicalSubtitle;

  /// No description provided for @patientViewFieldPersonalPathologicalHistoryEmpty.
  ///
  /// In es, this message translates to:
  /// **'Sin patologías personales'**
  String get patientViewFieldPersonalPathologicalHistoryEmpty;

  /// No description provided for @patientViewFieldFamilyPathologicalHistoryEmpty.
  ///
  /// In es, this message translates to:
  /// **'Sin patologías familiares'**
  String get patientViewFieldFamilyPathologicalHistoryEmpty;

  /// No description provided for @patientViewFieldEgresoTitle.
  ///
  /// In es, this message translates to:
  /// **'Información de Egreso'**
  String get patientViewFieldEgresoTitle;

  /// No description provided for @patientViewFieldEgresoDetectionDate.
  ///
  /// In es, this message translates to:
  /// **'Fecha de detección'**
  String get patientViewFieldEgresoDetectionDate;

  /// No description provided for @patientViewFieldEgresoSymptoms.
  ///
  /// In es, this message translates to:
  /// **'Sintomas'**
  String get patientViewFieldEgresoSymptoms;

  /// No description provided for @patientViewFieldEgresoDurationOfSymptoms.
  ///
  /// In es, this message translates to:
  /// **'Duración de los síntomas desde el 1ro'**
  String get patientViewFieldEgresoDurationOfSymptoms;

  /// No description provided for @patientViewFieldEgresoDiagnosisWay.
  ///
  /// In es, this message translates to:
  /// **'Forma de diagnóstico'**
  String get patientViewFieldEgresoDiagnosisWay;

  /// No description provided for @patientViewFieldEgresoTestUsedInDiagnosis.
  ///
  /// In es, this message translates to:
  /// **'Test usado en el diagnóstico'**
  String get patientViewFieldEgresoTestUsedInDiagnosis;

  /// No description provided for @patientViewFieldEgresoDaysFromSymptomsToDiagnosis.
  ///
  /// In es, this message translates to:
  /// **'Cantidad de días entre el inicio de los síntomas y el diagnóstico'**
  String get patientViewFieldEgresoDaysFromSymptomsToDiagnosis;

  /// No description provided for @patientViewFieldEgresoNumberPcrPerformed.
  ///
  /// In es, this message translates to:
  /// **'Número de Test/PCR realizados'**
  String get patientViewFieldEgresoNumberPcrPerformed;

  /// No description provided for @patientViewFieldEgresoTimeFromDiagnosisToNegativeOrDischarge.
  ///
  /// In es, this message translates to:
  /// **'Tiempo tardado en negativizar o en recibir el alta clínica a partir del diagnóstico'**
  String get patientViewFieldEgresoTimeFromDiagnosisToNegativeOrDischarge;

  /// No description provided for @patientViewFieldEgresoFormOfContagion.
  ///
  /// In es, this message translates to:
  /// **'Forma de contagio'**
  String get patientViewFieldEgresoFormOfContagion;

  /// No description provided for @patientViewFieldEgresoWasHePartOfAnEvent.
  ///
  /// In es, this message translates to:
  /// **'¿Formó parte de un Evento?'**
  String get patientViewFieldEgresoWasHePartOfAnEvent;

  /// No description provided for @patientViewFieldEgresoDidHeWorkInTheAttentionToPositiveCases.
  ///
  /// In es, this message translates to:
  /// **'¿Trabajaba en la atención a casos positivos?'**
  String get patientViewFieldEgresoDidHeWorkInTheAttentionToPositiveCases;

  /// No description provided for @patientViewFieldEgresoHospitalizationTime.
  ///
  /// In es, this message translates to:
  /// **'Tiempo de hospitalización'**
  String get patientViewFieldEgresoHospitalizationTime;

  /// No description provided for @patientViewFieldEgresoIncomes.
  ///
  /// In es, this message translates to:
  /// **'Ingresos'**
  String get patientViewFieldEgresoIncomes;

  /// No description provided for @patientViewFieldEgresoContactsFirstLevel.
  ///
  /// In es, this message translates to:
  /// **'Contactos de 1er anillo'**
  String get patientViewFieldEgresoContactsFirstLevel;

  /// No description provided for @patientViewFieldEgresoContactsFirstLevelPositives.
  ///
  /// In es, this message translates to:
  /// **'Contactos de 1er anillo positivos'**
  String get patientViewFieldEgresoContactsFirstLevelPositives;

  /// No description provided for @patientViewFieldEgresoContactsSecondLevel.
  ///
  /// In es, this message translates to:
  /// **'Contactos de 2do anillo'**
  String get patientViewFieldEgresoContactsSecondLevel;

  /// No description provided for @patientViewFieldEgresoContactsSecondLevelPositives.
  ///
  /// In es, this message translates to:
  /// **'Contactos de 2do anillo positivos'**
  String get patientViewFieldEgresoContactsSecondLevelPositives;

  /// No description provided for @patientViewFieldEgresoContactsThirdLevel.
  ///
  /// In es, this message translates to:
  /// **'Contactos de 3er anillo'**
  String get patientViewFieldEgresoContactsThirdLevel;

  /// No description provided for @patientViewFieldEgresoContactsThirdLevelPositives.
  ///
  /// In es, this message translates to:
  /// **'Contactos de 3er anillo positivos'**
  String get patientViewFieldEgresoContactsThirdLevelPositives;

  /// No description provided for @patientViewFieldEgresoTreatmentsReceived.
  ///
  /// In es, this message translates to:
  /// **'Tratamiento recibido'**
  String get patientViewFieldEgresoTreatmentsReceived;

  /// No description provided for @patientViewFieldEgresoAntibiotics.
  ///
  /// In es, this message translates to:
  /// **'Antibióticos'**
  String get patientViewFieldEgresoAntibiotics;

  /// No description provided for @patientViewFieldEgresoProphylaxis.
  ///
  /// In es, this message translates to:
  /// **'Realizó profilaxis con'**
  String get patientViewFieldEgresoProphylaxis;

  /// No description provided for @patientViewFieldEgresoAnotherVaccineAgainstCovid.
  ///
  /// In es, this message translates to:
  /// **'Otra vacuna anti COVID-19'**
  String get patientViewFieldEgresoAnotherVaccineAgainstCovid;

  /// No description provided for @patientViewFieldEgresoAftermath.
  ///
  /// In es, this message translates to:
  /// **'Secuelas'**
  String get patientViewFieldEgresoAftermath;

  /// No description provided for @patientViewFieldEgresoOthersAftermath.
  ///
  /// In es, this message translates to:
  /// **'Otras secuelas'**
  String get patientViewFieldEgresoOthersAftermath;

  /// No description provided for @patientViewErrorMessage.
  ///
  /// In es, this message translates to:
  /// **'Ha ocurrido un error durante la obtención de la información del paciente.'**
  String get patientViewErrorMessage;

  /// No description provided for @patientViewErrorRetry.
  ///
  /// In es, this message translates to:
  /// **'Reintentar'**
  String get patientViewErrorRetry;

  /// No description provided for @patientEditEgresoPageTitle.
  ///
  /// In es, this message translates to:
  /// **'Editar'**
  String get patientEditEgresoPageTitle;

  /// No description provided for @patientEditEgresoAppBarTitle.
  ///
  /// In es, this message translates to:
  /// **'Editar Información de Egreso'**
  String get patientEditEgresoAppBarTitle;

  /// No description provided for @patientEditEgresoErrorSaveMessage.
  ///
  /// In es, this message translates to:
  /// **'Ocurrio un error al guardar los datos.'**
  String get patientEditEgresoErrorSaveMessage;

  /// No description provided for @patientEditEgresoErrorFetchMessage.
  ///
  /// In es, this message translates to:
  /// **'Ha ocurrido un error al cargar los datos.'**
  String get patientEditEgresoErrorFetchMessage;

  /// No description provided for @patientEditEgresoSuccessMessage.
  ///
  /// In es, this message translates to:
  /// **'Información de egreso actualizada.'**
  String get patientEditEgresoSuccessMessage;

  /// No description provided for @patientEditEgresoRetry.
  ///
  /// In es, this message translates to:
  /// **'Reintentar'**
  String get patientEditEgresoRetry;

  /// No description provided for @patientEditEgresoSymptons.
  ///
  /// In es, this message translates to:
  /// **'Síntomas'**
  String get patientEditEgresoSymptons;

  /// No description provided for @patientEditEgresoDiagnosis.
  ///
  /// In es, this message translates to:
  /// **'Diagnóstico'**
  String get patientEditEgresoDiagnosis;

  /// No description provided for @patientEditEgresoFormOfContagion.
  ///
  /// In es, this message translates to:
  /// **'Forma de Contagio'**
  String get patientEditEgresoFormOfContagion;

  /// No description provided for @patientEditEgresoHospitalizationTime.
  ///
  /// In es, this message translates to:
  /// **'Tiempo de Hospitalización'**
  String get patientEditEgresoHospitalizationTime;

  /// No description provided for @patientEditEgresoHospitalizationTimeDesc.
  ///
  /// In es, this message translates to:
  /// **'Para el tiempo de hospitalización se recomienda la forma compacta número inicial del servicio. Ejemplo:\nUn paciente que estuvo 2 días en cuidado, 3 grave uno crítico, 2 grave, 3 cuidado, alta - 2C3G1Cr2G3C.\nUn paciente que estuvo 2 días en cuidado, 3 grave uno crítico, y falleció - 2C3G1CrF.'**
  String get patientEditEgresoHospitalizationTimeDesc;

  /// No description provided for @patientEditEgresoIncomes.
  ///
  /// In es, this message translates to:
  /// **'Ingreso'**
  String get patientEditEgresoIncomes;

  /// No description provided for @patientEditEgresoContacts.
  ///
  /// In es, this message translates to:
  /// **'Contactos'**
  String get patientEditEgresoContacts;

  /// No description provided for @patientEditEgresoRing.
  ///
  /// In es, this message translates to:
  /// **'Anillo'**
  String get patientEditEgresoRing;

  /// No description provided for @patientEditEgresoRingPositives.
  ///
  /// In es, this message translates to:
  /// **'¿Cuántos enfermaron?'**
  String get patientEditEgresoRingPositives;

  /// No description provided for @patientEditEgresoTreatmentsReceived.
  ///
  /// In es, this message translates to:
  /// **'Tratamiento Recibido'**
  String get patientEditEgresoTreatmentsReceived;

  /// No description provided for @patientEditEgresoProphylaxis.
  ///
  /// In es, this message translates to:
  /// **'Profilaxis'**
  String get patientEditEgresoProphylaxis;

  /// No description provided for @patientEditEgresoAftermath.
  ///
  /// In es, this message translates to:
  /// **'Secuelas'**
  String get patientEditEgresoAftermath;

  /// No description provided for @patientEditEgresoEdit.
  ///
  /// In es, this message translates to:
  /// **'Editar'**
  String get patientEditEgresoEdit;

  /// No description provided for @patientEditEgresoOtherAftermath.
  ///
  /// In es, this message translates to:
  /// **'Otras secuelas'**
  String get patientEditEgresoOtherAftermath;

  /// No description provided for @patientEditEgresoAnotherVaccines.
  ///
  /// In es, this message translates to:
  /// **'Otras vacunas usadas'**
  String get patientEditEgresoAnotherVaccines;

  /// No description provided for @patientEditEgresoProphylaxisWith.
  ///
  /// In es, this message translates to:
  /// **'Realizó profilaxis con'**
  String get patientEditEgresoProphylaxisWith;

  /// No description provided for @patientEditEgresoAntibiotics.
  ///
  /// In es, this message translates to:
  /// **'Antibióticos'**
  String get patientEditEgresoAntibiotics;

  /// No description provided for @patientEditEgresoTreatments.
  ///
  /// In es, this message translates to:
  /// **'Tratamientos'**
  String get patientEditEgresoTreatments;

  /// No description provided for @patientEditEgresoCount.
  ///
  /// In es, this message translates to:
  /// **'Cantidad'**
  String get patientEditEgresoCount;

  /// No description provided for @patientEditEgresoThirdLevel.
  ///
  /// In es, this message translates to:
  /// **'Tercero'**
  String get patientEditEgresoThirdLevel;

  /// No description provided for @patientEditEgresoSecondLevel.
  ///
  /// In es, this message translates to:
  /// **'Segundo'**
  String get patientEditEgresoSecondLevel;

  /// No description provided for @patientEditEgresoFirstLevel.
  ///
  /// In es, this message translates to:
  /// **'Primero'**
  String get patientEditEgresoFirstLevel;

  /// No description provided for @patientEditEgresoIncomesDetails.
  ///
  /// In es, this message translates to:
  /// **'Detalles de Ingreso'**
  String get patientEditEgresoIncomesDetails;

  /// No description provided for @patientEditEgresoCompactForm.
  ///
  /// In es, this message translates to:
  /// **'Forma Compacta'**
  String get patientEditEgresoCompactForm;

  /// No description provided for @patientEditEgresoDidHeWorkInTheAttentionToPositiveCases.
  ///
  /// In es, this message translates to:
  /// **'¿Trabajó en la atención de casos positivos?'**
  String get patientEditEgresoDidHeWorkInTheAttentionToPositiveCases;

  /// No description provided for @patientEditEgresoWasHePartOfAnEvent.
  ///
  /// In es, this message translates to:
  /// **'¿Fué parte de un evento de transmisión?'**
  String get patientEditEgresoWasHePartOfAnEvent;

  /// No description provided for @patientEditEgresoTimeFromDiagnosisToNegativeOrDischarge.
  ///
  /// In es, this message translates to:
  /// **'Tiempo tardado en negativizar o en recibir el alta clínica a partir del diagnóstico'**
  String get patientEditEgresoTimeFromDiagnosisToNegativeOrDischarge;

  /// No description provided for @patientEditEgresoDaysCount.
  ///
  /// In es, this message translates to:
  /// **'Cant. de días'**
  String get patientEditEgresoDaysCount;

  /// No description provided for @patientEditEgresoNumberPcrPerformed.
  ///
  /// In es, this message translates to:
  /// **'Número de Tests/Pcr realizados'**
  String get patientEditEgresoNumberPcrPerformed;

  /// No description provided for @patientEditEgresoDaysFromSymptomsToDiagnosis.
  ///
  /// In es, this message translates to:
  /// **'Días con síntomas hasta diagnóstico'**
  String get patientEditEgresoDaysFromSymptomsToDiagnosis;

  /// No description provided for @patientEditEgresoTestUsedInDiagnosis.
  ///
  /// In es, this message translates to:
  /// **'Test usado en el Diagnóstico'**
  String get patientEditEgresoTestUsedInDiagnosis;

  /// No description provided for @patientEditEgresoDiagnosisWay.
  ///
  /// In es, this message translates to:
  /// **'Forma de diagnóstico'**
  String get patientEditEgresoDiagnosisWay;

  /// No description provided for @patientEditEgresoDurationOfSymptoms.
  ///
  /// In es, this message translates to:
  /// **'Duración de los síntomas (en días)'**
  String get patientEditEgresoDurationOfSymptoms;

  /// No description provided for @patientEditEgresoSymptomp.
  ///
  /// In es, this message translates to:
  /// **'Síntoma'**
  String get patientEditEgresoSymptomp;

  /// No description provided for @patientEditEgresoDetectionDate.
  ///
  /// In es, this message translates to:
  /// **'Fecha de detección'**
  String get patientEditEgresoDetectionDate;

  /// No description provided for @patientEditBasicPageTitle.
  ///
  /// In es, this message translates to:
  /// **'Editar'**
  String get patientEditBasicPageTitle;

  /// No description provided for @patientEditBasicAppBarTitle.
  ///
  /// In es, this message translates to:
  /// **'Editar Información Básica'**
  String get patientEditBasicAppBarTitle;

  /// No description provided for @patientEditBasicError.
  ///
  /// In es, this message translates to:
  /// **'Error'**
  String get patientEditBasicError;

  /// No description provided for @patientEditBasicErrorMessage.
  ///
  /// In es, this message translates to:
  /// **'Ha ocurrido un error'**
  String get patientEditBasicErrorMessage;

  /// No description provided for @patientEditBasicSuccessMessage.
  ///
  /// In es, this message translates to:
  /// **'Información de paciente actualizada.'**
  String get patientEditBasicSuccessMessage;

  /// No description provided for @patientEditBasicErrorButtonText.
  ///
  /// In es, this message translates to:
  /// **'Recargar página'**
  String get patientEditBasicErrorButtonText;

  /// No description provided for @patientEditBasicSubmmitButtonText.
  ///
  /// In es, this message translates to:
  /// **'Aplicar Cambios'**
  String get patientEditBasicSubmmitButtonText;

  /// No description provided for @patientEditBasicNameInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Nombres(s)*'**
  String get patientEditBasicNameInputLabelText;

  /// No description provided for @patientEditBasicLastNameInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Apellido(s)*'**
  String get patientEditBasicLastNameInputLabelText;

  /// No description provided for @patientEditBasicIDInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Carnet de identidad*'**
  String get patientEditBasicIDInputLabelText;

  /// No description provided for @patientEditBasicAgeInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Edad*'**
  String get patientEditBasicAgeInputLabelText;

  /// No description provided for @patientEditBasicSexInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Sexo*'**
  String get patientEditBasicSexInputLabelText;

  /// No description provided for @patientEditBasicSkinColorInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Color de Piel*'**
  String get patientEditBasicSkinColorInputLabelText;

  /// No description provided for @patientEditBasicBloodTypeInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Sangre'**
  String get patientEditBasicBloodTypeInputLabelText;

  /// No description provided for @patientEditBasicProvinceInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Provincia*'**
  String get patientEditBasicProvinceInputLabelText;

  /// No description provided for @patientEditBasicMunicipalityInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Municipio*'**
  String get patientEditBasicMunicipalityInputLabelText;

  /// No description provided for @patientEditBasicAddressInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Dirección*'**
  String get patientEditBasicAddressInputLabelText;

  /// No description provided for @patientEditBasicPolyclinicInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Policlínico*'**
  String get patientEditBasicPolyclinicInputLabelText;

  /// No description provided for @patientEditBasicSurgeryInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Consultorio*'**
  String get patientEditBasicSurgeryInputLabelText;

  /// No description provided for @patientEditBasicPopularCouncilInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Consejo Popular*'**
  String get patientEditBasicPopularCouncilInputLabelText;

  /// No description provided for @patientEditBasicNeighborhoodInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Reparto*'**
  String get patientEditBasicNeighborhoodInputLabelText;

  /// No description provided for @patientEditBasicBlockInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'No. de Manzana*'**
  String get patientEditBasicBlockInputLabelText;

  /// No description provided for @patientEditBasicPathologicalHistoryInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Patologías Personales'**
  String get patientEditBasicPathologicalHistoryInputLabelText;

  /// No description provided for @patientEditBasicFamilyPathologicalHistoryInputLabelText.
  ///
  /// In es, this message translates to:
  /// **'Patologías Familiares*'**
  String get patientEditBasicFamilyPathologicalHistoryInputLabelText;

  /// No description provided for @multiselectDropDownWidgetTitle.
  ///
  /// In es, this message translates to:
  /// **'Seleccione una o varias opciones'**
  String get multiselectDropDownWidgetTitle;

  /// No description provided for @multiselectDropDownWidgetCancel.
  ///
  /// In es, this message translates to:
  /// **'Cancelar'**
  String get multiselectDropDownWidgetCancel;

  /// No description provided for @multiselectDropDownWidgetAccept.
  ///
  /// In es, this message translates to:
  /// **'Aceptar'**
  String get multiselectDropDownWidgetAccept;

  /// No description provided for @neighborhoodInputWidgetDefaultLabelText.
  ///
  /// In es, this message translates to:
  /// **'Reparto'**
  String get neighborhoodInputWidgetDefaultLabelText;

  /// No description provided for @polyclinicInputWidgetDefaultLabelText.
  ///
  /// In es, this message translates to:
  /// **'Policlínico'**
  String get polyclinicInputWidgetDefaultLabelText;

  /// No description provided for @municipalityInputWidgetDefaultLabelText.
  ///
  /// In es, this message translates to:
  /// **'Municipio'**
  String get municipalityInputWidgetDefaultLabelText;

  /// No description provided for @provinceInputWidgetDefaultLabelText.
  ///
  /// In es, this message translates to:
  /// **'Provincia'**
  String get provinceInputWidgetDefaultLabelText;

  /// No description provided for @pathologicalHistoryInputWidgetDefaultLabelText.
  ///
  /// In es, this message translates to:
  /// **'Tratamiento Realizado'**
  String get pathologicalHistoryInputWidgetDefaultLabelText;

  /// No description provided for @incomeDaysInputWidgetDefaultLabelText.
  ///
  /// In es, this message translates to:
  /// **'Cant. de días'**
  String get incomeDaysInputWidgetDefaultLabelText;

  /// No description provided for @incomeInputWidgetNumberError.
  ///
  /// In es, this message translates to:
  /// **'La cantidad de días debe ser un número'**
  String get incomeInputWidgetNumberError;

  /// No description provided for @incomeInputWidgetNegativeError.
  ///
  /// In es, this message translates to:
  /// **'La cantidad de días debe ser mayor que 0'**
  String get incomeInputWidgetNegativeError;

  /// No description provided for @incomeInputWidgetDays.
  ///
  /// In es, this message translates to:
  /// **'días'**
  String get incomeInputWidgetDays;

  /// No description provided for @incomeInputWidgetDefaultLabelText.
  ///
  /// In es, this message translates to:
  /// **'Ingreso en'**
  String get incomeInputWidgetDefaultLabelText;

  /// No description provided for @pathologicalInputWidgetDefaultLabelText.
  ///
  /// In es, this message translates to:
  /// **'Patología'**
  String get pathologicalInputWidgetDefaultLabelText;

  /// No description provided for @popularCouncilInputWidgetDefaultLabelText.
  ///
  /// In es, this message translates to:
  /// **'Consejo Popular'**
  String get popularCouncilInputWidgetDefaultLabelText;

  /// No description provided for @surgeryInputWidgetDefaultLabelText.
  ///
  /// In es, this message translates to:
  /// **'Consultorio'**
  String get surgeryInputWidgetDefaultLabelText;

  /// No description provided for @emailInputWidgetDefaultHintText.
  ///
  /// In es, this message translates to:
  /// **'Correo'**
  String get emailInputWidgetDefaultHintText;

  /// No description provided for @passwordInputWidgetDefaultLabelText.
  ///
  /// In es, this message translates to:
  /// **'Contraseña'**
  String get passwordInputWidgetDefaultLabelText;

  /// No description provided for @validatorRequired.
  ///
  /// In es, this message translates to:
  /// **'Campo requerido'**
  String get validatorRequired;

  /// No description provided for @validatorEmail.
  ///
  /// In es, this message translates to:
  /// **'Email invalido'**
  String get validatorEmail;

  /// No description provided for @validatorLength.
  ///
  /// In es, this message translates to:
  /// **'Longitud inválida'**
  String get validatorLength;

  /// No description provided for @validatorInteger.
  ///
  /// In es, this message translates to:
  /// **'Debe ser un número entero'**
  String get validatorInteger;

  /// No description provided for @validatorNumber.
  ///
  /// In es, this message translates to:
  /// **'Debe ser un número'**
  String get validatorNumber;

  /// No description provided for @validatorIntegerNonNegative.
  ///
  /// In es, this message translates to:
  /// **'Debe ser un entero no negativo'**
  String get validatorIntegerNonNegative;

  /// No description provided for @enumSexMale.
  ///
  /// In es, this message translates to:
  /// **'Masculino'**
  String get enumSexMale;

  /// No description provided for @enumSexFemale.
  ///
  /// In es, this message translates to:
  /// **'Femenino'**
  String get enumSexFemale;

  /// No description provided for @enumSexOther.
  ///
  /// In es, this message translates to:
  /// **'Otro'**
  String get enumSexOther;

  /// No description provided for @enumBloodTypeUnknown.
  ///
  /// In es, this message translates to:
  /// **'Desconocido'**
  String get enumBloodTypeUnknown;

  /// No description provided for @enumBloodTypeABminus.
  ///
  /// In es, this message translates to:
  /// **'AB-'**
  String get enumBloodTypeABminus;

  /// No description provided for @enumBloodTypeABplus.
  ///
  /// In es, this message translates to:
  /// **'AB+'**
  String get enumBloodTypeABplus;

  /// No description provided for @enumBloodTypeAminus.
  ///
  /// In es, this message translates to:
  /// **'A-'**
  String get enumBloodTypeAminus;

  /// No description provided for @enumBloodTypeAplus.
  ///
  /// In es, this message translates to:
  /// **'A+'**
  String get enumBloodTypeAplus;

  /// No description provided for @enumBloodTypeBminus.
  ///
  /// In es, this message translates to:
  /// **'B-'**
  String get enumBloodTypeBminus;

  /// No description provided for @enumBloodTypeBplus.
  ///
  /// In es, this message translates to:
  /// **'B+'**
  String get enumBloodTypeBplus;

  /// No description provided for @enumBloodTypeOminus.
  ///
  /// In es, this message translates to:
  /// **'O-'**
  String get enumBloodTypeOminus;

  /// No description provided for @enumBloodTypeOplus.
  ///
  /// In es, this message translates to:
  /// **'O+'**
  String get enumBloodTypeOplus;

  /// No description provided for @enumSkinColorWhite.
  ///
  /// In es, this message translates to:
  /// **'Blanco'**
  String get enumSkinColorWhite;

  /// No description provided for @enumSkinColorBlack.
  ///
  /// In es, this message translates to:
  /// **'Negro'**
  String get enumSkinColorBlack;

  /// No description provided for @enumSkinColorOther.
  ///
  /// In es, this message translates to:
  /// **'Otro'**
  String get enumSkinColorOther;

  /// No description provided for @enumContagionTraveler.
  ///
  /// In es, this message translates to:
  /// **'Viajero'**
  String get enumContagionTraveler;

  /// No description provided for @enumContagionContact.
  ///
  /// In es, this message translates to:
  /// **'Contacto'**
  String get enumContagionContact;

  /// No description provided for @enumContagionInderterminate.
  ///
  /// In es, this message translates to:
  /// **'Indeterminada'**
  String get enumContagionInderterminate;

  /// No description provided for @enumDiagnosisWayGuardCorps.
  ///
  /// In es, this message translates to:
  /// **'Cuerpo de Guardia'**
  String get enumDiagnosisWayGuardCorps;

  /// No description provided for @enumDiagnosisWayFocusControl.
  ///
  /// In es, this message translates to:
  /// **'Control de Foco'**
  String get enumDiagnosisWayFocusControl;

  /// No description provided for @enumIncomeHome.
  ///
  /// In es, this message translates to:
  /// **'Hogar'**
  String get enumIncomeHome;

  /// No description provided for @enumIncomeIsolationCenter.
  ///
  /// In es, this message translates to:
  /// **'Centro de Aislamiento'**
  String get enumIncomeIsolationCenter;

  /// No description provided for @enumIncomeHospitalRoom.
  ///
  /// In es, this message translates to:
  /// **'Sale del Hospital'**
  String get enumIncomeHospitalRoom;

  /// No description provided for @enumIncomeIntermediateTherapy.
  ///
  /// In es, this message translates to:
  /// **'Terapia Intermedia'**
  String get enumIncomeIntermediateTherapy;

  /// No description provided for @enumIncomeIntensiveTherapy.
  ///
  /// In es, this message translates to:
  /// **'Terapia Intensiva'**
  String get enumIncomeIntensiveTherapy;

  /// No description provided for @enumTestDiagnosisAntigenTest.
  ///
  /// In es, this message translates to:
  /// **'Test de Antígenos'**
  String get enumTestDiagnosisAntigenTest;

  /// No description provided for @enumTestDiagnosisBiosensor.
  ///
  /// In es, this message translates to:
  /// **'Biosensor'**
  String get enumTestDiagnosisBiosensor;

  /// No description provided for @enumTestDiagnosisPCR.
  ///
  /// In es, this message translates to:
  /// **'PCR-RT'**
  String get enumTestDiagnosisPCR;

  /// No description provided for @enumTestDiagnosisIgMIgGAntibodyTest.
  ///
  /// In es, this message translates to:
  /// **'Test de anticuerpo IgM/IgG'**
  String get enumTestDiagnosisIgMIgGAntibodyTest;

  /// No description provided for @enumAftermathFatigue.
  ///
  /// In es, this message translates to:
  /// **'Fatiga'**
  String get enumAftermathFatigue;

  /// No description provided for @enumAftermathHeadache.
  ///
  /// In es, this message translates to:
  /// **'Dolor de Cabeza'**
  String get enumAftermathHeadache;

  /// No description provided for @enumAftermathAlopecia.
  ///
  /// In es, this message translates to:
  /// **'Alopecia'**
  String get enumAftermathAlopecia;

  /// No description provided for @enumAftermathRespiratorySymptoms.
  ///
  /// In es, this message translates to:
  /// **'Síntomas Respiratorios'**
  String get enumAftermathRespiratorySymptoms;

  /// No description provided for @enumAftermathMuscleBoneNeuropathicPain.
  ///
  /// In es, this message translates to:
  /// **'Dolores musculares y óseos'**
  String get enumAftermathMuscleBoneNeuropathicPain;

  /// No description provided for @enumAftermathPsychologicalPsychiatricDisorders.
  ///
  /// In es, this message translates to:
  /// **'Desorden Psicológico-Psiquiátrico'**
  String get enumAftermathPsychologicalPsychiatricDisorders;

  /// No description provided for @enumAftermathSexualDisorders.
  ///
  /// In es, this message translates to:
  /// **'Desorden Sexual'**
  String get enumAftermathSexualDisorders;

  /// No description provided for @enumAftermathSleepDisorder.
  ///
  /// In es, this message translates to:
  /// **'Desorden del Sueño'**
  String get enumAftermathSleepDisorder;

  /// No description provided for @enumAftermathPersistenceOfLossOfSmell.
  ///
  /// In es, this message translates to:
  /// **'Pérdida del Olfato'**
  String get enumAftermathPersistenceOfLossOfSmell;

  /// No description provided for @enumAftermathPersistenceOfLossOfAppetite.
  ///
  /// In es, this message translates to:
  /// **'Pérdida del Apetito'**
  String get enumAftermathPersistenceOfLossOfAppetite;

  /// No description provided for @enumAftermathGastrointestinalSymptoms.
  ///
  /// In es, this message translates to:
  /// **'Síntomas Gastrointestinales'**
  String get enumAftermathGastrointestinalSymptoms;

  /// No description provided for @enumAftermathDizziness.
  ///
  /// In es, this message translates to:
  /// **'Mareos'**
  String get enumAftermathDizziness;

  /// No description provided for @enumAftermathDesiresToVomit.
  ///
  /// In es, this message translates to:
  /// **'Vómitos'**
  String get enumAftermathDesiresToVomit;

  /// No description provided for @enumAftermathOthers.
  ///
  /// In es, this message translates to:
  /// **'Otros'**
  String get enumAftermathOthers;

  /// No description provided for @enumTreatmentHerferon.
  ///
  /// In es, this message translates to:
  /// **'Herferón'**
  String get enumTreatmentHerferon;

  /// No description provided for @enumTreatmentInterferonGeneric.
  ///
  /// In es, this message translates to:
  /// **'Interferón (genérico)'**
  String get enumTreatmentInterferonGeneric;

  /// No description provided for @enumTreatmentJusvinza.
  ///
  /// In es, this message translates to:
  /// **'Jusvinza'**
  String get enumTreatmentJusvinza;

  /// No description provided for @enumTreatmentHeberferon.
  ///
  /// In es, this message translates to:
  /// **'Heberferón'**
  String get enumTreatmentHeberferon;

  /// No description provided for @enumTreatmentFraxiparinLowMolecularWeightHeparins.
  ///
  /// In es, this message translates to:
  /// **'Fraxiparina/Heparinas de bajo peso molecular'**
  String get enumTreatmentFraxiparinLowMolecularWeightHeparins;

  /// No description provided for @enumTreatmentNasalferon.
  ///
  /// In es, this message translates to:
  /// **'Nasalferón'**
  String get enumTreatmentNasalferon;

  /// No description provided for @enumTreatmentPrednisone.
  ///
  /// In es, this message translates to:
  /// **'Prednisona'**
  String get enumTreatmentPrednisone;

  /// No description provided for @enumTreatmentPrevengovir.
  ///
  /// In es, this message translates to:
  /// **'Prevengovir'**
  String get enumTreatmentPrevengovir;

  /// No description provided for @enumTreatmentBetamethasone.
  ///
  /// In es, this message translates to:
  /// **'Betametasona'**
  String get enumTreatmentBetamethasone;

  /// No description provided for @enumTreatmentItalizumab.
  ///
  /// In es, this message translates to:
  /// **'Italizumab'**
  String get enumTreatmentItalizumab;

  /// No description provided for @enumProphylaxisPrevengovir.
  ///
  /// In es, this message translates to:
  /// **'Prevengovir'**
  String get enumProphylaxisPrevengovir;

  /// No description provided for @enumProphylaxisVimang.
  ///
  /// In es, this message translates to:
  /// **'Vimang'**
  String get enumProphylaxisVimang;

  /// No description provided for @enumProphylaxisMoringa.
  ///
  /// In es, this message translates to:
  /// **'Moringa'**
  String get enumProphylaxisMoringa;

  /// No description provided for @enumProphylaxisBiomodulinT.
  ///
  /// In es, this message translates to:
  /// **'Biomodulina T'**
  String get enumProphylaxisBiomodulinT;

  /// No description provided for @enumProphylaxisVitaminC.
  ///
  /// In es, this message translates to:
  /// **'Vitamina C'**
  String get enumProphylaxisVitaminC;

  /// No description provided for @enumProphylaxisPolivit.
  ///
  /// In es, this message translates to:
  /// **'Polivit'**
  String get enumProphylaxisPolivit;

  /// No description provided for @enumProphylaxisTurmeric.
  ///
  /// In es, this message translates to:
  /// **'Cúrcuma'**
  String get enumProphylaxisTurmeric;

  /// No description provided for @enumProphylaxisSoverana2AndPlus.
  ///
  /// In es, this message translates to:
  /// **'Soberana 02 + Soberana PLus'**
  String get enumProphylaxisSoverana2AndPlus;

  /// No description provided for @enumProphylaxisHoney.
  ///
  /// In es, this message translates to:
  /// **'Miel'**
  String get enumProphylaxisHoney;

  /// No description provided for @enumProphylaxisVitaminA.
  ///
  /// In es, this message translates to:
  /// **'Vitamina A'**
  String get enumProphylaxisVitaminA;

  /// No description provided for @enumProphylaxisGinger.
  ///
  /// In es, this message translates to:
  /// **'Jengibre'**
  String get enumProphylaxisGinger;

  /// No description provided for @enumProphylaxisSoveranaPlus.
  ///
  /// In es, this message translates to:
  /// **'Soberana Plus'**
  String get enumProphylaxisSoveranaPlus;

  /// No description provided for @enumProphylaxisAbdala.
  ///
  /// In es, this message translates to:
  /// **'Abdala'**
  String get enumProphylaxisAbdala;

  /// No description provided for @enumProphylaxisCovid19Previously.
  ///
  /// In es, this message translates to:
  /// **'Ya tuvo COVID-19 previamente'**
  String get enumProphylaxisCovid19Previously;
}

class _MessagesDelegate extends LocalizationsDelegate<Messages> {
  const _MessagesDelegate();

  @override
  Future<Messages> load(Locale locale) {
    return SynchronousFuture<Messages>(lookupMessages(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['es'].contains(locale.languageCode);

  @override
  bool shouldReload(_MessagesDelegate old) => false;
}

Messages lookupMessages(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'es': return MessagesEs();
  }

  throw FlutterError(
    'Messages.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
