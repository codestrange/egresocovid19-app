


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
}
