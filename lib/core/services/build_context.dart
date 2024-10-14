import 'package:echoapp/core/services/navigation_service.dart';
import 'package:echoapp/injection.dart';
import 'package:flutter/material.dart';

/// Global BuildContext
final BuildContext context =
    getIt<NavigationService>().navigationKey.currentContext!;
