import 'dart:developer';

import 'package:dartz/dartz.dart';

import 'package:code_book/core/errors/failure.dart';

import '../../../core/use_cases/use_case.dart';
import '../entities/book_entity.dart';
import '../repos_domain/home_repo.dart';

class FetchPopualrBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchPopualrBooksUseCase(this.homeRepo);
  @override
  Future<Either<Failure, List<BookEntity>>> call([int param = 0]) async {
    log('FetchPopualrBooksUseCase  homeRepo.fetchPopularBooks(pageNumber: param) :::::: ${homeRepo.fetchPopularBooks(pageNumber: param)}');
    return await homeRepo.fetchPopularBooks(
      pageNumber: param,
    );
  }
}
