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
  Messages(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('es')];

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
}

class _MessagesDelegate extends LocalizationsDelegate<Messages> {
  const _MessagesDelegate();

  @override
  Future<Messages> load(Locale locale) {
    return SynchronousFuture<Messages>(lookupMessages(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['es'].contains(locale.languageCode);

  @override
  bool shouldReload(_MessagesDelegate old) => false;
}

Messages lookupMessages(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'es':
      return MessagesEs();
  }

  throw FlutterError(
      'Messages.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
