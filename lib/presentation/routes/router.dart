import 'package:auto_route/auto_route.dart';
import 'package:echoapp/presentation/auth/auth_screen.dart';
import 'package:echoapp/presentation/auth/register_screen.dart';
import 'package:echoapp/presentation/bottom_navigation/bottom_navigation.dart';
import 'package:echoapp/presentation/categories/categories_screen.dart';
import 'package:echoapp/presentation/splash/splash_view.dart';
part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.adaptive(); //.cupertino, .adaptive ..etc

  @override
  final List<AutoRoute> routes = [
    AdaptiveRoute(page: BottomNavigationRoute.page),
    AdaptiveRoute(page: CategoriesRoute.page),
    AdaptiveRoute(page: SplashRoute.page, initial: true),
    AdaptiveRoute(page: AuthRoute.page),
    AdaptiveRoute(page: RegisterRoute.page),
  ];
}
