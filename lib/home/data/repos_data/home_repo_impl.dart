import 'dart:developer';

import 'package:code_book/core/errors/failure.dart';
import 'package:code_book/home/data/data_sources/home_local_data_source.dart';
import 'package:code_book/home/data/data_sources/home_remote_data_source.dart';
import 'package:code_book/home/domain/entities/book_entity.dart';
import 'package:code_book/home/domain/repos_domain/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(this.homeRemoteDataSource, this.homeLocalDataSource);
  @override
  Future<Either<Failure, List<BookEntity>>> fetchPopularBooks(
      {int pageNumber = 0}) async {
    List<BookEntity> booksList;
    try {
      booksList = homeLocalDataSource.fetchPopularBooks(pageNumber: pageNumber);
      if (booksList.isNotEmpty) {
        log('HomeRepoImpl booksList.isNotEmpty fetchPopularBooks::: ${booksList.isNotEmpty} $booksList');
        return right(booksList);
      }
      booksList =
          await homeRemoteDataSource.fetchPopularBooks(pageNumber: pageNumber);
      log('HomeRepoImpl booksList fetchPopularBooks::: $booksList');
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        log('HomeRepoImpl DioException fetchPopularBooks::: $DioException ');
        log('HomeRepoImpl exception fetchPopularBooks::: $e ');

        return left(ServerFailure.fromDioException(e));
      }
      log('HomeRepoImpl ServerFailure Exception ::: $e ');
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks(
      {int pageNumber = 0}) async {
    List<BookEntity> booksList;
    try {
      booksList = homeLocalDataSource.fetchNewestBooks(pageNumber: pageNumber);
      if (booksList.isNotEmpty) {
        log('HomeRepoImpl booksList.isNotEmpty fetchNewestBooks::: ${booksList.isNotEmpty} $booksList');
        return right(booksList);
      }
      booksList =
          await homeRemoteDataSource.fetchNewestBooks(pageNumber: pageNumber);
      log('HomeRepoImpl booksList fetchNewestBooks::: $booksList');
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        log('HomeRepoImpl DioException fetchNewestBooks::: $DioException ');
        log('HomeRepoImpl exception fetchNewestBooks::: $e ');

        return left(ServerFailure.fromDioException(e));
      }
      log('HomeRepoImpl ServerFailure Exception fetchNewestBooks::: $e ');
      return left(ServerFailure(message: e.toString()));
    }
  }
}
