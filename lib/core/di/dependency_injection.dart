import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repository/login_repository.dart';
import '../../features/signup/data/repository/signup_repository.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

setupGetIt() {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));

  //signin
  getIt.registerLazySingleton<SignupRepository>(() => SignupRepository(getIt()));
}
