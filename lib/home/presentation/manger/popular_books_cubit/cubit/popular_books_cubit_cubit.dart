// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:code_book/home/domain/entities/book_entity.dart';

import 'package:code_book/home/domain/use_cases/fetch_popular_books_use_case.dart';

import 'package:meta/meta.dart';

part 'popular_books_cubit_state.dart';

 class PopularBooksCubit extends Cubit<PopularBooksCubitState> {
  PopularBooksCubit(this.fetchPopualrBooksUseCase)
      : super(PopularBooksCubitInitial());

  final FetchPopualrBooksUseCase fetchPopualrBooksUseCase;

  Future<void> fetchPopualrBooks({int pageNumber = 0}) async {
    log('PopularBooksCubit pageNumber ::: $pageNumber');

    if (pageNumber == 0) {
      emit(PopularBooksLoading());

      log('PopularBooksCubit PopularBooksLoading ::: $pageNumber');
    } else {
      emit(PopularBooksPaginationLoading());

      log('PopularBooksCubit PopularBooksLoading ::: $pageNumber');
    }

    var result = await fetchPopualrBooksUseCase.call(pageNumber);

    log('PopularBooksCubit result ::: $pageNumber');

    log('PopularBooksCubit result ::: $result');

    result.fold((l) {
      if (pageNumber == 0) {
        log('PopularBooksCubit PopularBooksFailure ::: $l');

        emit(PopularBooksFailure(l.toString()));
      } else {
        log('PopularBooksCubit PopularBooksFailure ::: $l');

        emit(PopularBooksPaginationFailure(l.toString()));
      }
    }, (r) {
      log('PopularBooksCubit PopularBooksSuccess ::: $r');

      emit(PopularBooksSuccess(r));
    });
  }
}
