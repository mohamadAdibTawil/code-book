import 'package:code_book/home/data/models/book_mdel/book_mdel.dart';

import '../../../home/domain/entities/book_entity.dart';

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data["items"]) {
      books.add(BookMdel.fromJson(bookMap));
    }
    return books;
  }

