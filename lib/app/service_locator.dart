import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:books_store/data/network/api_service.dart';
import 'package:books_store/data/repository/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(ApiService(Dio())));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
