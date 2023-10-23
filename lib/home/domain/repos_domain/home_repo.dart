import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../entities/book_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchPopularBooks(
      {int pageNumber = 0});
  // Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
  // Future<Either<Failure, List<BookEntity>>> fetchTrendBooks();
  // Future<Either<Failure, List<BookEntity>>> fetchFavoritesBooks(
  //     String bookId, String userId);
  // Future<Either<Failure, List<BookEntity>>> fetchResumeReadingBooks(
  //     String userId);
  // Future<Either<Failure, List<BookEntity>>> fetchLikeBook(
  //     [List<String>? categories]);
}
