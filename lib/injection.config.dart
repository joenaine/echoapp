// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:echoapp/application/app/app_bloc.dart' as _i3;
import 'package:echoapp/application/auth/auth_bloc.dart' as _i19;
import 'package:echoapp/application/categories/categories_bloc.dart' as _i23;
import 'package:echoapp/application/channels/channels_bloc.dart' as _i24;
import 'package:echoapp/application/filter/filter_bloc.dart' as _i7;
import 'package:echoapp/application/personality/personality_bloc.dart' as _i25;
import 'package:echoapp/application/personality_posts/personality_posts_bloc.dart'
    as _i16;
import 'package:echoapp/application/posts/post_detail/post_detail_bloc.dart'
    as _i17;
import 'package:echoapp/application/posts/post_favorites/post_favorites_bloc.dart'
    as _i15;
import 'package:echoapp/application/posts/posts_bloc.dart' as _i21;
import 'package:echoapp/application/profile/profile_bloc.dart' as _i18;
import 'package:echoapp/application/tags/tags_bloc.dart' as _i22;
import 'package:echoapp/core/helpers/dio_helper.dart' as _i4;
import 'package:echoapp/core/services/ftoast_service.dart' as _i20;
import 'package:echoapp/core/services/navigation_service.dart' as _i6;
import 'package:echoapp/core/services/service_injectable_module.dart' as _i26;
import 'package:echoapp/infrastructure/auth_repository.dart' as _i11;
import 'package:echoapp/infrastructure/categories_repository.dart' as _i13;
import 'package:echoapp/infrastructure/channel_repository.dart' as _i10;
import 'package:echoapp/infrastructure/person_repository.dart' as _i14;
import 'package:echoapp/infrastructure/posts_repository.dart' as _i8;
import 'package:echoapp/infrastructure/profile_repository.dart' as _i12;
import 'package:echoapp/infrastructure/tags_repository.dart' as _i9;
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
    gh.lazySingleton<_i7.FilterBloc>(() => _i7.FilterBloc());
    gh.lazySingleton<_i8.PostsRepository>(() => _i8.PostsRepository());
    gh.lazySingleton<_i9.TagsRepository>(() => _i9.TagsRepository());
    gh.lazySingleton<_i10.ChannelsRepository>(() => _i10.ChannelsRepository());
    gh.lazySingleton<_i11.AuthRepository>(() => _i11.AuthRepository());
    gh.lazySingleton<_i12.ProfileRepository>(() => _i12.ProfileRepository());
    gh.lazySingleton<_i13.CategoriesRepository>(
        () => _i13.CategoriesRepository());
    gh.lazySingleton<_i14.PersonRepository>(() => _i14.PersonRepository());
    gh.lazySingleton<_i15.PostFavoritesBloc>(
        () => _i15.PostFavoritesBloc(gh<_i8.PostsRepository>()));
    gh.lazySingleton<_i16.PersonalityPostsBloc>(
        () => _i16.PersonalityPostsBloc(gh<_i8.PostsRepository>()));
    gh.factory<_i17.PostDetailBloc>(
        () => _i17.PostDetailBloc(gh<_i8.PostsRepository>()));
    gh.factory<_i18.ProfileBloc>(
        () => _i18.ProfileBloc(gh<_i12.ProfileRepository>()));
    gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(gh<_i11.AuthRepository>()));
    gh.lazySingleton<_i20.FToastService>(
        () => _i20.FToastService(gh<_i5.FToast>()));
    gh.factory<_i21.PostsBloc>(() => _i21.PostsBloc(
          gh<_i7.FilterBloc>(),
          gh<_i8.PostsRepository>(),
          gh<_i20.FToastService>(),
          gh<_i15.PostFavoritesBloc>(),
        ));
    gh.factory<_i22.TagsBloc>(() => _i22.TagsBloc(
          gh<_i9.TagsRepository>(),
          gh<_i20.FToastService>(),
        ));
    gh.factory<_i23.CategoriesBloc>(() => _i23.CategoriesBloc(
          gh<_i13.CategoriesRepository>(),
          gh<_i20.FToastService>(),
        ));
    gh.factory<_i24.ChannelsBloc>(() => _i24.ChannelsBloc(
          gh<_i10.ChannelsRepository>(),
          gh<_i20.FToastService>(),
        ));
    gh.factory<_i25.PersonalityBloc>(() => _i25.PersonalityBloc(
          gh<_i14.PersonRepository>(),
          gh<_i20.FToastService>(),
        ));
    return this;
  }
}

class _$ServiceInjectableModule extends _i26.ServiceInjectableModule {}
