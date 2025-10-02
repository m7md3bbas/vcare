import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:vcare/core/networking/api_service.dart';
import 'package:vcare/core/networking/dio_factory.dart';
import 'package:vcare/features/login/data/repos/login_repo.dart';
import 'package:vcare/features/login/logic/cubit/login_cubit.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  //dio &api service
  Dio dio = DioFactory.getDio();
  locator.registerSingleton<ApiService>(ApiService(dio));

  //login
  locator.registerSingleton<LoginRepo>(LoginRepo(locator()));
  locator.registerSingleton<LoginCubit>(LoginCubit(locator()));
}
