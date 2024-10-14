import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/core/constants/app_assets.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/presentation/auth/register_screen.dart';
import 'package:echoapp/presentation/auth/widgets/custom_textfield.dart';
import 'package:echoapp/presentation/common_widgets/action_button_widget.dart';
import 'package:echoapp/presentation/common_widgets/app_hide_heyboard_widget.dart';
import 'package:echoapp/presentation/routes/router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  String? phoneNumber;
  String? password;

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
          appBar: AppBar(),
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
                        'Войти',
                        style: AppStyles.s24w600,
                      ),
                      const SizedBox(height: 26),
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
                        icon: AppAssets.svg.password,
                        onSaved: (p0) {
                          if (p0 != null) {
                            password = p0;
                          }
                        },
                        validator: (value) =>
                            value!.isEmpty ? 'Заполните поле' : null,
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
                      text: 'Войти',
                      isLoading: state.status == Status.loading,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState?.save();

                          context.read<AuthBloc>().add(AuthEvent.login(
                              phoneNumber: phoneNumber!, password: password!));
                        }
                      },
                    );
                  },
                ),
                const SizedBox(height: 35),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'У вас нет аккаунта? ',
                      style: AppStyles.s16w400,
                      children: [
                        TextSpan(
                          text: 'Зарегестрироваться',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.router.push(const RegisterRoute());
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
