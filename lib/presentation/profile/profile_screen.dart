import 'package:echoapp/application/app/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
          onPressed: () {
            context.read<AppBloc>().add(AppEvent.logOut(context: context));
          },
          child: const Text('Log out')),
    );
  }
}
