
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
  /// **'Barrio'**
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
  /// **'Sin patologias personales'**
  String get patientViewFieldPersonalPathologicalHistoryEmpty;

  /// No description provided for @patientViewFieldFamilyPathologicalHistoryEmpty.
  ///
  /// In es, this message translates to:
  /// **'Sin patologias familiares'**
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
  /// **'Duración de los sintomas desde el 1ro'**
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
