import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/app/app_bloc.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        log("Current state: $state");
        state.map(
          initial: (_) {},
          authenticated: (_) {
            router.replace(const BottomNavigationRoute());
          },
          unauthenticated: (_) => router.replace(const AuthRoute()),
          error: (e) {
            FlushbarHelper.createError(message: e.error ?? '').show(context);
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(color: AppColors.black),
        ),
      ),
    );
  }
}
