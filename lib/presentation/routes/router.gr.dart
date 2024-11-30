// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthScreen(),
      );
    },
    BottomNavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavigationScreen(),
      );
    },
    CategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesRouteArgs>(
          orElse: () => const CategoriesRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoriesScreen(
          key: args.key,
          isFromDrawer: args.isFromDrawer,
        ),
      );
    },
    FavoritesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoritesScreen(),
      );
    },
    FilterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FilterScreen(),
      );
    },
    PersonalitiesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PersonalitiesScreen(),
      );
    },
    PersonalityPostsRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalityPostsRouteArgs>(
          orElse: () => const PersonalityPostsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PersonalityPostsScreen(
          key: args.key,
          title: args.title,
          id: args.id,
        ),
      );
    },
    PostDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PostDetailsRouteArgs>(
          orElse: () => const PostDetailsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PostDetailsScreen(
          key: args.key,
          previousId: args.previousId,
          title: args.title,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    TagsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TagsScreen(),
      );
    },
  };
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BottomNavigationScreen]
class BottomNavigationRoute extends PageRouteInfo<void> {
  const BottomNavigationRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoriesScreen]
class CategoriesRoute extends PageRouteInfo<CategoriesRouteArgs> {
  CategoriesRoute({
    Key? key,
    bool? isFromDrawer = false,
    List<PageRouteInfo>? children,
  }) : super(
          CategoriesRoute.name,
          args: CategoriesRouteArgs(
            key: key,
            isFromDrawer: isFromDrawer,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const PageInfo<CategoriesRouteArgs> page =
      PageInfo<CategoriesRouteArgs>(name);
}

class CategoriesRouteArgs {
  const CategoriesRouteArgs({
    this.key,
    this.isFromDrawer = false,
  });

  final Key? key;

  final bool? isFromDrawer;

  @override
  String toString() {
    return 'CategoriesRouteArgs{key: $key, isFromDrawer: $isFromDrawer}';
  }
}

/// generated route for
/// [FavoritesScreen]
class FavoritesRoute extends PageRouteInfo<void> {
  const FavoritesRoute({List<PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FilterScreen]
class FilterRoute extends PageRouteInfo<void> {
  const FilterRoute({List<PageRouteInfo>? children})
      : super(
          FilterRoute.name,
          initialChildren: children,
        );

  static const String name = 'FilterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PersonalitiesScreen]
class PersonalitiesRoute extends PageRouteInfo<void> {
  const PersonalitiesRoute({List<PageRouteInfo>? children})
      : super(
          PersonalitiesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalitiesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PersonalityPostsScreen]
class PersonalityPostsRoute extends PageRouteInfo<PersonalityPostsRouteArgs> {
  PersonalityPostsRoute({
    Key? key,
    String? title,
    int? id,
    List<PageRouteInfo>? children,
  }) : super(
          PersonalityPostsRoute.name,
          args: PersonalityPostsRouteArgs(
            key: key,
            title: title,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'PersonalityPostsRoute';

  static const PageInfo<PersonalityPostsRouteArgs> page =
      PageInfo<PersonalityPostsRouteArgs>(name);
}

class PersonalityPostsRouteArgs {
  const PersonalityPostsRouteArgs({
    this.key,
    this.title,
    this.id,
  });

  final Key? key;

  final String? title;

  final int? id;

  @override
  String toString() {
    return 'PersonalityPostsRouteArgs{key: $key, title: $title, id: $id}';
  }
}

/// generated route for
/// [PostDetailsScreen]
class PostDetailsRoute extends PageRouteInfo<PostDetailsRouteArgs> {
  PostDetailsRoute({
    Key? key,
    int? previousId,
    String? title,
    List<PageRouteInfo>? children,
  }) : super(
          PostDetailsRoute.name,
          args: PostDetailsRouteArgs(
            key: key,
            previousId: previousId,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'PostDetailsRoute';

  static const PageInfo<PostDetailsRouteArgs> page =
      PageInfo<PostDetailsRouteArgs>(name);
}

class PostDetailsRouteArgs {
  const PostDetailsRouteArgs({
    this.key,
    this.previousId,
    this.title,
  });

  final Key? key;

  final int? previousId;

  final String? title;

  @override
  String toString() {
    return 'PostDetailsRouteArgs{key: $key, previousId: $previousId, title: $title}';
  }
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TagsScreen]
class TagsRoute extends PageRouteInfo<void> {
  const TagsRoute({List<PageRouteInfo>? children})
      : super(
          TagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TagsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
