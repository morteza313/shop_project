import 'package:apple_shop/data/dataource/athentication_datasource.dart';
import 'package:apple_shop/data/repository/authentication_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var locator = GetIt.instance;
Future<void> getItInit() async {
  locator.registerSingleton<Dio>(
      Dio(BaseOptions(baseUrl: 'http://startflutter.ir/api/')));

//datasources
  locator.registerLazySingleton<IAthenticationDatasource>(
      () => AthenticationRemote());

  //repositories

  locator.registerFactory<IAuthRepository>(() => AthenticationRepository());
}
