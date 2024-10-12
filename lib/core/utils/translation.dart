import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

final supportedLocales = [
  const Locale('ru'),
  const Locale('en'),
];
Locale locale = const Locale('ru');

final getLocale = <String, String>{
  'ru': 'Рус',
  'en': 'Eng',
};

String getLocaleString(BuildContext context) {
  // Get the current locale
  Locale currentLocale = context.locale;

// Convert the locale to a string (e.g., "en")
  // String languageCode = currentLocale.languageCode;

// To get a string representation of the entire locale (e.g., "en_US")
  String localeString = currentLocale.toString();

  return getLocale[localeString]!;
}
