import 'dart:developer';

import 'package:code_book/core/errors/failure.dart';
import 'package:code_book/core/use_cases/use_case.dart';
import 'package:code_book/home/domain/entities/book_entity.dart';
import 'package:code_book/home/domain/repos_domain/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);
  @override
  Future<Either<Failure, List<BookEntity>>> call([int param = 0]) async {
    log('FetchPopualrBooksUseCase  homeRepo.fetchPopularBooks(pageNumber: param) :::::: ${homeRepo.fetchNewestBooks(pageNumber: param)}');
    return await homeRepo.fetchNewestBooks(pageNumber: param);
  }
}
