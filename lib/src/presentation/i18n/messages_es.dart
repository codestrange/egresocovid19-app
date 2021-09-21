


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
}
