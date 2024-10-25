import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/application/categories/categories_bloc.dart';
import 'package:echoapp/application/tags/tags_bloc.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/services/ftoast_service.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/injection.dart';
import 'package:echoapp/presentation/common_widgets/action_button_widget.dart';
import 'package:echoapp/presentation/common_widgets/app_hide_heyboard_widget.dart';
import 'package:echoapp/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TagsScreen extends StatefulWidget {
  const TagsScreen({super.key});

  @override
  State<TagsScreen> createState() => _TagsScreenState();
}

class _TagsScreenState extends State<TagsScreen> {
  @override
  void initState() {
    super.initState();
    getIt<FToastService>().initFToast(context);
    context.read<TagsBloc>().add(const TagsEvent.fetch());
    context.read<TagsBloc>().add(const TagsEvent.fetchFavourites());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    // Trigger the fetch event with the search query
    context.read<TagsBloc>().add(TagsEvent.fetch(search: query));
  }

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppHideKeyboardWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Теги', style: AppStyles.s22w700),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Поиск тегов',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onChanged: _onSearchChanged,
                ),
              ),
              Expanded(
                child: BlocConsumer<TagsBloc, TagsState>(
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
                    return Stack(
                      children: [
                        SingleChildScrollView(
                          padding: const EdgeInsets.only(
                              bottom:
                                  200), // Add padding to prevent overlapping
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  'Выберите то, что вы хотели бы видеть в своей ленте',
                                  style: AppStyles.s12w400
                                      .copyWith(color: AppColors.lightGrey),
                                ),
                              ),
                              const SizedBox(height: 32),
                              categories.isEmpty
                                  ? const CircularProgressIndicator()
                                  : Wrap(
                                      children: categories
                                          .map((e) => Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: MaterialButton(
                                                  elevation: 0,
                                                  color: selCategories
                                                          .contains(e.id)
                                                      ? AppColors.black
                                                      : AppColors.cardLight,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  onPressed: () {
                                                    context
                                                        .read<TagsBloc>()
                                                        .add(TagsEvent.addTag(
                                                            id: e.id!));
                                                  },
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Text(
                                                    e.name ?? '',
                                                    style: AppStyles.s16w600
                                                        .copyWith(
                                                      color: selCategories
                                                              .contains(e.id)
                                                          ? AppColors.white
                                                          : AppColors.black,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                    ),
                            ],
                          ),
                        ),
                      ],
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
