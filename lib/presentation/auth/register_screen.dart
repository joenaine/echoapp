import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/core/constants/app_assets.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/domain/user/user_model.dart';
import 'package:echoapp/presentation/auth/widgets/custom_textfield.dart';
import 'package:echoapp/presentation/common_widgets/action_button_widget.dart';
import 'package:echoapp/presentation/common_widgets/app_hide_heyboard_widget.dart';
import 'package:echoapp/presentation/routes/router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? password;
  String? repeatPassword;

  @override
  Widget build(BuildContext context) {
    return AppHideKeyboardWidget(
      child: BlocListener<AuthBloc, AuthState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status == Status.success) {
            context.router.replace(const CategoriesRoute());
          } else if (state.status == Status.error) {
            FlushbarHelper.createError(message: state.error ?? '')
                .show(context);
          }
        },
        child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: AppColors.black),
          ),
          body: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Зарегистрироваться',
                        style: AppStyles.s24w600,
                      ),
                      const SizedBox(height: 26),
                      CustomTextFormField(
                        hintText: 'Иван',
                        label: 'Имя пользователя',
                        icon: AppAssets.svg.person,
                        onSaved: (p0) {
                          if (p0 != null) {
                            firstName = p0;
                          }
                        },
                      ),
                      CustomTextFormField(
                        hintText: 'Иванов',
                        label: 'Фамилия',
                        icon: AppAssets.svg.person,
                        onSaved: (p0) {
                          if (p0 != null) {
                            lastName = p0;
                          }
                        },
                      ),
                      CustomTextFormField(
                        hintText: '+7 (700) 123-45-67',
                        label: 'Номер телефона',
                        icon: AppAssets.svg.person,
                        isPhoneNumber: true,
                        validator: (value) =>
                            value!.isEmpty ? 'Заполните поле' : null,
                        onUnmaskedSaved: (p0) {
                          phoneNumber = p0;
                        },
                      ),
                      CustomTextFormField(
                        isPassword: true,
                        hintText: '2Password3',
                        label: 'Пароль',
                        onSaved: (p0) {
                          if (p0 != null) {
                            password = p0;
                          }
                        },
                        onChanged: (p0) {
                          password = p0;
                        },
                        validator: (value) =>
                            value!.isEmpty ? 'Заполните поле' : null,
                        icon: AppAssets.svg.password,
                      ),
                      CustomTextFormField(
                        isPassword: true,
                        hintText: '2Password3',
                        label: 'Повтор пароля',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Заполните поле';
                          } else if (password != value) {
                            return 'Пароли не совпадают';
                          }
                          return null;
                        },
                        icon: AppAssets.svg.password,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 35),
                BlocBuilder<AuthBloc, AuthState>(
                  buildWhen: (previous, current) =>
                      previous.status != current.status,
                  builder: (context, state) {
                    return ActionButtonWidget(
                      text: 'Зарегистрироваться',
                      isLoading: state.status == Status.loading,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState?.save();

                          final userModel = UserModel(
                              firstName: firstName,
                              lastName: lastName,
                              username: phoneNumber,
                              password: password);
                          log('User: ${userModel.toJson()}');
                          context
                              .read<AuthBloc>()
                              .add(AuthEvent.register(userModel: userModel));
                        }
                      },
                    );
                  },
                ),
                const SizedBox(height: 35),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'У вас есть аккаунт? ',
                      style: AppStyles.s16w400,
                      children: [
                        TextSpan(
                          text: 'Войти',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.router.maybePop();
                            },
                          style: AppStyles.s16w600
                              .copyWith(decoration: TextDecoration.underline),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
