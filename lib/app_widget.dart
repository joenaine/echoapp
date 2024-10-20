import 'package:easy_localization/easy_localization.dart';
import 'package:echoapp/application/app/app_bloc.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/application/categories/categories_bloc.dart';
import 'package:echoapp/application/channels/channels_bloc.dart';
import 'package:echoapp/application/posts/post_detail/post_detail_bloc.dart';
import 'package:echoapp/application/posts/posts_bloc.dart';
import 'package:echoapp/application/profile/profile_bloc.dart';
import 'package:echoapp/core/services/navigation_service.dart';
import 'package:echoapp/core/theme/app_theme.dart';
import 'package:echoapp/injection.dart';
import 'package:echoapp/presentation/routes/route_observer.dart';
import 'package:echoapp/presentation/routes/router.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<AppBloc>()..add(const AppEvent.userChanged())),
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<CategoriesBloc>()),
        BlocProvider(create: (context) => getIt<PostsBloc>()),
        BlocProvider(create: (context) => getIt<ChannelsBloc>()),
        BlocProvider(create: (context) => getIt<ProfileBloc>()),
        BlocProvider(create: (context) => getIt<PostDetailBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Hustle',
        routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [
            AppRouteObserver(),
          ],
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: AppTheme.lightTheme,
      ),
    );
  }
}
