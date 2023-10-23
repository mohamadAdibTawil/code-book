// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';


import '../../../core/utils/api_services.dart';
import '../../../core/utils/functions/get_books_list.dart';
import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchPopularBooks({int pageNumber = 0});
  Future<List<BookEntity>> fetchNewestBooks({int pageNumber = 0});
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServices apiServices;
  HomeRemoteDataSourceImpl({
    required this.apiServices,
  });

  @override
  Future<List<BookEntity>> fetchPopularBooks({int pageNumber = 0}) async {
    var data = await apiServices.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber * 10}');
    log('HomeRemoteDataSourceImpl data fetchPopularBooks::: $data');
    List<BookEntity> books = getBooksList(data);
    log('HomeRemoteDataSourceImpl books ::: $books');
    // saveBooksData(books, kPopularBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks({int pageNumber = 0}) async {
    var data = await apiServices.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest&q=programming&startIndex=${pageNumber * 10}');
    log('HomeRemoteDataSourceImpl data fetchNewestBooks::: $data');
    List<BookEntity> books = getBooksList(data);
    return books;
  }
}
