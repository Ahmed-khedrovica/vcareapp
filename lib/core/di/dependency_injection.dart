import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:vcareapp/core/networking/api_service.dart';
import 'package:vcareapp/core/networking/dio_factory.dart';
import 'package:vcareapp/features/login/data/repos/login_repo.dart';
import 'package:vcareapp/features/login/logic/login_cubit.dart';
import 'package:vcareapp/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:vcareapp/features/sign_up/logic/signup_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
