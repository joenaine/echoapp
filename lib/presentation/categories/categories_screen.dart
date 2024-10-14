import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/application/categories/categories_bloc.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/services/ftoast_service.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/injection.dart';
import 'package:echoapp/presentation/common_widgets/action_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  void initState() {
    super.initState();
    getIt<FToastService>().initFToast(context);
    context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Интересы', style: AppStyles.s22w700),
      ),
      body: SafeArea(
        child: BlocConsumer<CategoriesBloc, CategoriesState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status == Status.error) {
              FlushbarHelper.createError(message: state.error ?? '')
                  .show(context);
            }
          },
          builder: (context, state) {
            log("Current state: ${state.status}");
            final categories = state.categories ?? [];
            final selCategories = state.selectedCategories ?? [];
            return Column(
              children: [
                Center(
                    child: Text(
                        'Выберите то, что вы хотели бы видеть в своей ленте',
                        style: AppStyles.s12w400
                            .copyWith(color: AppColors.lightGrey))),
                const SizedBox(height: 32),
                categories.isEmpty
                    ? const CircularProgressIndicator()
                    : Wrap(
                        children: categories
                            .map((e) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MaterialButton(
                                    elevation: 0,
                                    color: selCategories.contains(e.id)
                                        ? AppColors.black
                                        : AppColors.cardLight,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    onPressed: () {
                                      context.read<CategoriesBloc>().add(
                                          CategoriesEvent.addCategory(
                                              id: e.id!));
                                    },
                                    padding: const EdgeInsets.all(10),
                                    child: Text(e.name ?? '',
                                        style: AppStyles.s16w600.copyWith(
                                          color: selCategories.contains(e.id)
                                              ? AppColors.white
                                              : AppColors.black,
                                        )),
                                  ),
                                ))
                            .toList(),
                      ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (selCategories.isNotEmpty)
                      ActionButtonWidget(
                        text: 'Сохранить',
                        onPressed: () {},
                      ),
                    const SizedBox(height: 8),
                    ActionButtonWidget(
                      text: 'Пропустить',
                      isColored: false,
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
