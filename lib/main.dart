import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:echoapp/app_widget.dart';
import 'package:echoapp/core/utils/translation.dart';
import 'package:echoapp/generated/codegen_loader.g.dart';
import 'package:echoapp/injection.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await configureInjection();
  final shared = await SharedPreferences.getInstance();
  if (shared.containsKey('locale')) {
    locale = supportedLocales.firstWhere(
      (element) =>
          element.languageCode ==
          (shared.get('locale')! as String).substring(0, 2),
    );
    log(locale.toString());
  }
  runApp(
    EasyLocalization(
        startLocale: supportedLocales[0],
        supportedLocales: supportedLocales,
        path: 'assets/translations',
        fallbackLocale: supportedLocales[0],
        assetLoader: const CodegenLoader(),
        child: AppWidget()),
  );
}
