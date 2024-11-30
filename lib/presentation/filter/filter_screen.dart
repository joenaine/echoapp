import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/categories/categories_bloc.dart';
import 'package:echoapp/application/channels/channels_bloc.dart';
import 'package:echoapp/application/filter/filter_bloc.dart';
import 'package:echoapp/application/personality/personality_bloc.dart';
import 'package:echoapp/application/tags/tags_bloc.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  void initState() {
    super.initState();

    context.read<CategoriesBloc>().add(const CategoriesEvent.fetchFavourites());

    context.read<ChannelsBloc>().add(const ChannelsEvent.fetchFavourites());
    context
        .read<PersonalityBloc>()
        .add(const PersonalityEvent.fetchFavourites());
    context.read<TagsBloc>().add(const TagsEvent.fetchFavourites());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Фильтр'),
        actions: [
          IconButton(
              onPressed: () {
                context
                    .read<CategoriesBloc>()
                    .add(const CategoriesEvent.fetchFavourites());

                context
                    .read<ChannelsBloc>()
                    .add(const ChannelsEvent.fetchFavourites());
                context
                    .read<PersonalityBloc>()
                    .add(const PersonalityEvent.fetchFavourites());
                context.read<TagsBloc>().add(const TagsEvent.fetchFavourites());
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<FilterBloc, FilterState>(
          builder: (context, filterState) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Categories Section
                  BlocBuilder<CategoriesBloc, CategoriesState>(
                    builder: (context, state) {
                      final categoriesList = state.categoriesFavorite;
                      return Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Категории',
                                    style: AppStyles.s18w800),
                                InkWell(
                                  onTap: () {
                                    context.router.push(
                                        CategoriesRoute(isFromDrawer: true));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Добавить',
                                        style: AppStyles.s14w400.copyWith(
                                            color: AppColors.lightGrey)),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Wrap(
                              children: categoriesList!
                                  .asMap()
                                  .map((i, category) {
                                    final isSelected = filterState.categoryList
                                            ?.any((element) =>
                                                element.id == category.id) ??
                                        false;

                                    return MapEntry(
                                      i,
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: MaterialButton(
                                          onPressed: () {
                                            context.read<FilterBloc>().add(
                                                FilterEvent.addCategory(
                                                    category: category));
                                          },
                                          color: isSelected
                                              ? AppColors.black
                                              : AppColors.white,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            side: const BorderSide(),
                                          ),
                                          child: Text(
                                            category.name ?? '',
                                            style: AppStyles.s12w600.copyWith(
                                                color: isSelected
                                                    ? AppColors.white
                                                    : AppColors.black),
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                                  .values
                                  .toList(),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  // Channels Section
                  BlocBuilder<ChannelsBloc, ChannelsState>(
                    builder: (context, state) {
                      final channelsList = state.favourites;
                      return Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Каналы', style: AppStyles.s18w800),
                                const SizedBox(height: 5),
                                Text(
                                    'Чтобы добавить каналы, перейдите на страницу \'Каналы\' и выберите нужные.',
                                    style: AppStyles.s12w400
                                        .copyWith(color: Colors.grey))
                              ],
                            ),
                            const SizedBox(height: 12),
                            Wrap(
                              children: channelsList!
                                  .asMap()
                                  .map((i, channel) {
                                    bool isSelected =
                                        filterState.selectedChannelId ==
                                            channel.id;

                                    return MapEntry(
                                      i,
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: MaterialButton(
                                          onPressed: () {
                                            context.read<FilterBloc>().add(
                                                FilterEvent.addChannel(
                                                    channelId: channel.id));
                                          },
                                          color: isSelected
                                              ? AppColors.black
                                              : AppColors.white,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            side: const BorderSide(),
                                          ),
                                          child: Text(
                                            channel.author ?? '',
                                            style: AppStyles.s12w600.copyWith(
                                                color: isSelected
                                                    ? AppColors.white
                                                    : AppColors.black),
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                                  .values
                                  .toList(),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  // Personalities Section
                  BlocBuilder<PersonalityBloc, PersonalityState>(
                    builder: (context, state) {
                      final personalityList = state.categoriesFavorite;
                      return Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Личности',
                                    style: AppStyles.s18w800),
                                InkWell(
                                  onTap: () {
                                    context.router
                                        .push(const PersonalitiesRoute());
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Добавить',
                                        style: AppStyles.s14w400.copyWith(
                                            color: AppColors.lightGrey)),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Wrap(
                              children: personalityList!
                                  .asMap()
                                  .map((i, person) {
                                    final isSelected = filterState.personList
                                            ?.any((element) =>
                                                element.id == person.id) ??
                                        false;

                                    return MapEntry(
                                      i,
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: MaterialButton(
                                          onPressed: () {
                                            context.read<FilterBloc>().add(
                                                FilterEvent.addPersonality(
                                                    person: person));
                                          },
                                          color: isSelected
                                              ? AppColors.black
                                              : AppColors.white,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            side: const BorderSide(),
                                          ),
                                          child: Text(
                                            person.fullName ?? '',
                                            style: AppStyles.s12w600.copyWith(
                                                color: isSelected
                                                    ? AppColors.white
                                                    : AppColors.black),
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                                  .values
                                  .toList(),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  // Tags Section
                  BlocBuilder<TagsBloc, TagsState>(
                    builder: (context, state) {
                      final tagsList = state.categoriesFavorite;
                      return Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Теги', style: AppStyles.s18w800),
                                InkWell(
                                  onTap: () {
                                    context.router.push(const TagsRoute());
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Добавить',
                                        style: AppStyles.s14w400.copyWith(
                                            color: AppColors.lightGrey)),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Wrap(
                              children: tagsList!
                                  .asMap()
                                  .map((i, tag) {
                                    final isSelected = filterState.tagList?.any(
                                            (element) =>
                                                element.id == tag.id) ??
                                        false;

                                    return MapEntry(
                                      i,
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: MaterialButton(
                                          onPressed: () {
                                            context.read<FilterBloc>().add(
                                                FilterEvent.addTag(tag: tag));
                                          },
                                          color: isSelected
                                              ? AppColors.black
                                              : AppColors.white,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            side: const BorderSide(),
                                          ),
                                          child: Text(
                                            tag.name ?? '',
                                            style: AppStyles.s12w600.copyWith(
                                                color: isSelected
                                                    ? AppColors.white
                                                    : AppColors.black),
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                                  .values
                                  .toList(),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
