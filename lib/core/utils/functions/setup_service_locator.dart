import 'package:code_book/core/utils/api_services.dart';
import 'package:code_book/home/data/data_sources/home_local_data_source.dart';
import 'package:code_book/home/data/data_sources/home_remote_data_source.dart';
import 'package:code_book/home/data/repos_data/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
      HomeRemoteDataSourceImpl(apiServices: ApiServices(Dio())),
      HomeLocalDataSourceImpl()));
}
