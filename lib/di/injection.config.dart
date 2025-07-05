// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_weather/common/api_client/api_client.dart' as _i449;
import 'package:app_weather/configs/build_config.dart' as _i767;
import 'package:app_weather/configs/currency_config.dart' as _i478;
import 'package:app_weather/configs/language_config.dart' as _i77;
import 'package:app_weather/data/local/keychain/shared_prefs.dart' as _i417;
import 'package:app_weather/data/remote/member/image_service.dart' as _i759;
import 'package:app_weather/di/modules.dart' as _i68;
import 'package:app_weather/modules/home/bloc/home_posts_cubit.dart' as _i477;
import 'package:app_weather/repositories/image_repository.dart' as _i867;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => injectableModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i767.BuildConfig>(() => _i767.BuildConfig());
    gh.lazySingleton<_i478.CurrencyConfig>(() => _i478.CurrencyConfig());
    gh.lazySingleton<_i77.LanguageConfig>(() => _i77.LanguageConfig());
    gh.lazySingleton<_i361.Dio>(() => injectableModule.dio);
    gh.singleton<_i449.ApiClient>(() => _i449.ApiClient(dio: gh<_i361.Dio>()));
    gh.lazySingleton<_i417.SharedPrefs>(
        () => _i417.SharedPrefs(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i759.ImageService>(
        () => _i759.ImageServiceImpl(gh<_i449.ApiClient>()));
    gh.lazySingleton<_i867.ImageRepository>(() =>
        _i867.ImageRepositoryImpl(imageService: gh<_i759.ImageService>()));
    gh.factory<_i477.HomePostsCubit>(
        () => _i477.HomePostsCubit(gh<_i867.ImageRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i68.InjectableModule {}
