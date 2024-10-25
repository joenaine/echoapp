import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/application/personality/personality_bloc.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/services/ftoast_service.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/injection.dart';
import 'package:echoapp/presentation/common_widgets/app_hide_heyboard_widget.dart';
import 'package:echoapp/presentation/common_widgets/app_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PersonalitiesScreen extends StatefulWidget {
  const PersonalitiesScreen({super.key});

  @override
  State<PersonalitiesScreen> createState() => _PersonalitiesScreenState();
}

class _PersonalitiesScreenState extends State<PersonalitiesScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getIt<FToastService>().initFToast(context);
    context.read<PersonalityBloc>().add(const PersonalityEvent.fetch());
    context
        .read<PersonalityBloc>()
        .add(const PersonalityEvent.fetchFavourites());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    // Trigger the fetch event with the search query
    context.read<PersonalityBloc>().add(PersonalityEvent.fetch(search: query));
  }

  @override
  Widget build(BuildContext context) {
    return AppHideKeyboardWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Личности', style: AppStyles.s22w700),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Поиск личностей',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onChanged: _onSearchChanged,
                ),
              ),
              Expanded(
                child: BlocConsumer<PersonalityBloc, PersonalityState>(
                  listenWhen: (previous, current) =>
                      previous.status != current.status,
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

                    return categories.isEmpty && state.status == Status.loading
                        ? const Center(child: CircularProgressIndicator())
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 8.0,
                                crossAxisSpacing: 8.0,
                                mainAxisExtent: 326,
                              ),
                              itemCount: categories.length,
                              itemBuilder: (context, index) {
                                final category = categories[index];
                                return Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      border: Border.all(
                                          color: AppColors.lightGrey),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      children: [
                                        AppImageWidget(
                                          height: 140,
                                          radius: 200,
                                          path: category.photo,
                                        ),
                                        const SizedBox(height: 20),
                                        Text(
                                          textAlign: TextAlign.center,
                                          category.fullName ?? '',
                                          style: AppStyles.s16w600.copyWith(
                                            color: selCategories
                                                    .contains(category.id)
                                                ? AppColors.white
                                                : AppColors.black,
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        MaterialButton(
                                            minWidth: 150,
                                            padding: const EdgeInsets.all(10),
                                            color: state.selectedCategories!
                                                    .contains(category.id)
                                                ? AppColors.white
                                                : AppColors.black,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(width: .5),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            onPressed: () {
                                              context
                                                  .read<PersonalityBloc>()
                                                  .add(PersonalityEvent
                                                      .addPerson(
                                                          id: category.id!));
                                            },
                                            child: state.selectedCategories!
                                                    .contains(category.id)
                                                ? Text(
                                                    'Убрать',
                                                    style: AppStyles.s10w500
                                                        .copyWith(
                                                            color: AppColors
                                                                .black),
                                                  )
                                                : Text(
                                                    'Добавить',
                                                    style: AppStyles.s10w500
                                                        .copyWith(
                                                            color: AppColors
                                                                .white),
                                                  ))
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
