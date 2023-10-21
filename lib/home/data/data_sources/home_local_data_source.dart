import 'dart:developer';

import 'package:code_book/contants.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchPopularBooks({int pageNumber = 0});
}

///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchPopularBooks({int pageNumber = 0}) {
    var box = Hive.box<BookEntity>(kPopularBox);
    int length = box.values.length;
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;

    if (startIndex >= length || endIndex > length) {
      return [];
    }
    log('Local data souce ::${box.values.toList().sublist(startIndex, endIndex)} ');
    return box.values.toList().sublist(startIndex, endIndex);
  }
}
