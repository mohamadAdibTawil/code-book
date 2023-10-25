// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:code_book/home/domain/entities/book_entity.dart';
import 'package:code_book/home/domain/use_cases/fetch_newst_books_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_newest_books_state.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit(this.fetchNewestBooksUseCase) : super(FetchNewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;

  Future<void> fetchNewestBooks({int pageNumber = 0}) async {
    log('NewestBooksCubit pageNumber ::: $pageNumber');

    if (pageNumber == 0) {
      emit(NewestBooksLoading());

      log('NewestBooksCubit NewestBooksLoading ::: $pageNumber');
    } else {
      emit(NewestBooksPaginationLoading());

      log('NewestBooksCubit NewestBooksLoading ::: $pageNumber');
    }

    var result = await fetchNewestBooksUseCase.call(pageNumber);

    log('NewestBooksCubit result ::: $pageNumber');

    log('NewestBooksCubit result ::: $result');

    result.fold((l) {
      if (pageNumber == 0) {
        log('NewestBooksCubit NewestBooksFailure ::: $l');

        emit(NewestBooksFailure(l.toString()));
      } else {
        log('NewestBooksCubit NewestBooksFailure ::: $l');

        emit(NewestBooksPaginationFailure(l.toString()));
      }
    }, (r) {
      log('NewestBooksCubit NewestBooksSuccess ::: $r');

      emit(NewestBooksSuccess(r));
    });
  }
}
