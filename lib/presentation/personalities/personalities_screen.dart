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
  final ScrollController _scrollController = ScrollController();
  String _currentSearch = '';

  @override
  void initState() {
    super.initState();
    getIt<FToastService>().initFToast(context);

    // Initial fetch without search
    context.read<PersonalityBloc>().add(const PersonalityEvent.fetch());
    context
        .read<PersonalityBloc>()
        .add(const PersonalityEvent.fetchFavourites());

    // Listen for scroll events for pagination
    _scrollController.addListener(_onScroll);

    // Listen for changes in the search controller
    _searchController.addListener(() {
      final query = _searchController.text.trim();

      // Only trigger a new fetch if the search query changes
      if (query != _currentSearch) {
        _currentSearch = query;
        context
            .read<PersonalityBloc>()
            .add(PersonalityEvent.fetch(search: query));
      }
    });
  }

  void _onScroll() {
    final bloc = context.read<PersonalityBloc>();
    if (_isBottom && bloc.hasMore && bloc.state.status != Status.loading) {
      bloc.add(PersonalityEvent.fetch(search: bloc.state.search));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
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
              // Search Bar
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
                ),
              ),
              // Content
              Expanded(
                child: BlocConsumer<PersonalityBloc, PersonalityState>(
                  listenWhen: (previous, current) =>
                      previous.status != current.status ||
                      previous.error != current.error,
                  listener: (context, state) {
                    if (state.status == Status.error) {
                      FlushbarHelper.createError(message: state.error ?? '')
                          .show(context);
                    }
                  },
                  builder: (context, state) {
                    final categories = state.categories ?? [];
                    final selCategories = state.selectedCategories ?? [];

                    if (state.status == Status.loading && categories.isEmpty) {
                      // Initial loading
                      return const Center(child: CircularProgressIndicator());
                    } else if (categories.isEmpty) {
                      // No data available
                      return const Center(child: Text('Нет данных'));
                    } else {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          controller: _scrollController,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: categories.length +
                              (state.isPaginating ?? false ? 1 : 0),
                          itemBuilder: (context, index) {
                            if (index < categories.length) {
                              final category = categories[index];
                              return Container(
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  border:
                                      Border.all(color: AppColors.lightGrey),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppImageWidget(
                                      height: 80,
                                      radius: 200,
                                      path: category.photo,
                                    ),
                                    const SizedBox(width: 20),
                                    Expanded(
                                      child: Text(
                                        category.fullName ?? '',
                                        textAlign: TextAlign.center,
                                        style: AppStyles.s16w600,
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    MaterialButton(
                                      minWidth: 70,
                                      padding: const EdgeInsets.all(10),
                                      color: selCategories.contains(category.id)
                                          ? AppColors.white
                                          : AppColors.black,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(width: .5),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      onPressed: () {
                                        context.read<PersonalityBloc>().add(
                                            PersonalityEvent.addPerson(
                                                id: category.id!));
                                      },
                                      child: selCategories.contains(category.id)
                                          ? Text(
                                              'Убрать',
                                              style: AppStyles.s10w500.copyWith(
                                                  color: AppColors.black),
                                            )
                                          : Text(
                                              'Добавить',
                                              style: AppStyles.s10w500.copyWith(
                                                  color: AppColors.white),
                                            ),
                                    ),
                                  ],
                                ),
                              );
                            } else {
                              // Bottom loader during pagination
                              return const Padding(
                                padding: EdgeInsets.all(8.0),
                                child:
                                    Center(child: CircularProgressIndicator()),
                              );
                            }
                          },
                        ),
                      );
                    }
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
