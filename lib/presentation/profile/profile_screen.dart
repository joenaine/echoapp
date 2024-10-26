import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:echoapp/application/app/app_bloc.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/application/profile/profile_bloc.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/core/utils/to_date.dart';
import 'package:echoapp/presentation/common_widgets/action_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlue,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text('Профиль'),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Удаление аккаунта'),
                    content:
                        const Text('Вы уверены что хотите удалить аккаунт?'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Отмена')),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            context
                                .read<AppBloc>()
                                .add(AppEvent.logOut(context: context));
                          },
                          child: const Text('Удалить'))
                    ],
                  ),
                );
              },
              icon: const Icon(CupertinoIcons.delete, color: AppColors.red))
        ],
      ),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            FlushbarHelper.createError(message: state.error ?? '')
                .show(context);
          }
        },
        builder: (context, state) {
          final profile = state.profileModel;
          log('profile : ${profile?.toJson()}');
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(color: AppColors.white),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          profile?.firstName ?? '',
                          style: AppStyles.s24w600
                              .copyWith(color: AppColors.black),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          profile?.lastName ?? '',
                          style: AppStyles.s24w600
                              .copyWith(color: AppColors.black),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Срок действия подписки',
                          style: AppStyles.s14w400
                              .copyWith(color: AppColors.lightGrey),
                        ),
                        Text(
                          toMonthSingleDate(DateTime.parse(
                              profile?.subscriptionExpiry ??
                                  DateTime.now().toIso8601String())),
                          style: AppStyles.s14w400
                              .copyWith(color: AppColors.lightGrey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 170.0),
                child: ActionButtonWidget(
                  isColored: false,
                  onPressed: () {
                    context
                        .read<AppBloc>()
                        .add(AppEvent.logOut(context: context));
                  },
                  text: 'Выйти',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
