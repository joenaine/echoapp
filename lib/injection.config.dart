// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:echoapp/application/app/app_bloc.dart' as _i3;
import 'package:echoapp/application/auth/auth_bloc.dart' as _i6;
import 'package:echoapp/core/helpers/dio_helper.dart' as _i4;
import 'package:echoapp/infrastructure/auth_repository.dart' as _i5;
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
    gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
    gh.lazySingleton<_i4.DioHelper>(() => _i4.DioHelper());
    gh.lazySingleton<_i5.AuthRepository>(() => _i5.AuthRepository());
    gh.factory<_i6.AuthBloc>(() => _i6.AuthBloc(gh<_i5.AuthRepository>()));
    return this;
  }
}
