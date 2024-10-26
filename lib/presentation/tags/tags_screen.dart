import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/application/tags/tags_bloc.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/services/ftoast_service.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/injection.dart';
import 'package:echoapp/presentation/common_widgets/app_hide_heyboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TagsScreen extends StatefulWidget {
  const TagsScreen({super.key});

  @override
  State<TagsScreen> createState() => _TagsScreenState();
}

class _TagsScreenState extends State<TagsScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _currentSearch = '';

  @override
  void initState() {
    super.initState();
    getIt<FToastService>().initFToast(context);

    // Initial fetch without search
    context.read<TagsBloc>().add(const TagsEvent.fetch());

    // Listen for changes in the search controller
    _searchController.addListener(() {
      final query = _searchController.text.trim();

      // Only trigger a new fetch if the search query changes
      if (query != _currentSearch) {
        _currentSearch = query;
        context.read<TagsBloc>().add(TagsEvent.fetch(search: query));
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

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
                ),
              ),
              Expanded(
                child: BlocConsumer<TagsBloc, TagsState>(
                  listenWhen: (previous, current) =>
                      previous.status != current.status ||
                      previous.search != current.search,
                  listener: (context, state) {
                    if (state.status == Status.error) {
                      FlushbarHelper.createError(message: state.error ?? '')
                          .show(context);
                    }
                  },
                  builder: (context, state) {
                    final categories = state.categories ?? [];
                    final selCategories = state.selectedCategories ?? [];

                    return Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.only(bottom: 16),
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
                                categories.isEmpty &&
                                        state.status != Status.loading
                                    ? const Text('Ничего не найдено')
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
                                                    shape:
                                                        RoundedRectangleBorder(
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
                                                        const EdgeInsets.all(
                                                            10),
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
                        ),
                        if (state.status == Status.loading)
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(),
                          ),
                        if (state.categories != null &&
                            state.categories!.isNotEmpty &&
                            context.read<TagsBloc>().hasMore)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                context
                                    .read<TagsBloc>()
                                    .add(TagsEvent.fetch(search: state.search));
                              },
                              child: const Text('Загрузить больше'),
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
