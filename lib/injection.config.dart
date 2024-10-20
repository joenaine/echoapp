// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:echoapp/application/app/app_bloc.dart' as _i3;
import 'package:echoapp/application/auth/auth_bloc.dart' as _i15;
import 'package:echoapp/application/categories/categories_bloc.dart' as _i17;
import 'package:echoapp/application/channels/channels_bloc.dart' as _i19;
import 'package:echoapp/application/posts/post_detail/post_detail_bloc.dart'
    as _i13;
import 'package:echoapp/application/posts/post_favorites/post_favorites_bloc.dart'
    as _i12;
import 'package:echoapp/application/posts/posts_bloc.dart' as _i18;
import 'package:echoapp/application/profile/profile_bloc.dart' as _i14;
import 'package:echoapp/core/helpers/dio_helper.dart' as _i4;
import 'package:echoapp/core/services/ftoast_service.dart' as _i16;
import 'package:echoapp/core/services/navigation_service.dart' as _i6;
import 'package:echoapp/core/services/service_injectable_module.dart' as _i20;
import 'package:echoapp/infrastructure/auth_repository.dart' as _i9;
import 'package:echoapp/infrastructure/categories_repository.dart' as _i11;
import 'package:echoapp/infrastructure/channel_repository.dart' as _i8;
import 'package:echoapp/infrastructure/posts_repository.dart' as _i7;
import 'package:echoapp/infrastructure/profile_repository.dart' as _i10;
import 'package:fluttertoast/fluttertoast.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceInjectableModule = _$ServiceInjectableModule();
    gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
    gh.lazySingleton<_i4.DioHelper>(() => _i4.DioHelper());
    gh.lazySingleton<_i5.FToast>(() => serviceInjectableModule.provideFToast());
    gh.lazySingleton<_i6.NavigationService>(() => _i6.NavigationService());
    gh.lazySingleton<_i7.PostsRepository>(() => _i7.PostsRepository());
    gh.lazySingleton<_i8.ChannelsRepository>(() => _i8.ChannelsRepository());
    gh.lazySingleton<_i9.AuthRepository>(() => _i9.AuthRepository());
    gh.lazySingleton<_i10.ProfileRepository>(() => _i10.ProfileRepository());
    gh.lazySingleton<_i11.CategoriesRepository>(
        () => _i11.CategoriesRepository());
    gh.lazySingleton<_i12.PostFavoritesBloc>(
        () => _i12.PostFavoritesBloc(gh<_i7.PostsRepository>()));
    gh.factory<_i13.PostDetailBloc>(
        () => _i13.PostDetailBloc(gh<_i7.PostsRepository>()));
    gh.factory<_i14.ProfileBloc>(
        () => _i14.ProfileBloc(gh<_i10.ProfileRepository>()));
    gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(gh<_i9.AuthRepository>()));
    gh.lazySingleton<_i16.FToastService>(
        () => _i16.FToastService(gh<_i5.FToast>()));
    gh.factory<_i17.CategoriesBloc>(() => _i17.CategoriesBloc(
          gh<_i11.CategoriesRepository>(),
          gh<_i16.FToastService>(),
        ));
    gh.factory<_i18.PostsBloc>(() => _i18.PostsBloc(
          gh<_i7.PostsRepository>(),
          gh<_i16.FToastService>(),
          gh<_i12.PostFavoritesBloc>(),
        ));
    gh.factory<_i19.ChannelsBloc>(() => _i19.ChannelsBloc(
          gh<_i8.ChannelsRepository>(),
          gh<_i16.FToastService>(),
        ));
    return this;
  }
}

class _$ServiceInjectableModule extends _i20.ServiceInjectableModule {}
