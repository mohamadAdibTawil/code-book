part of 'fetch_newest_books_cubit.dart';

@immutable
sealed class FetchNewestBooksState {}

final class FetchNewestBooksInitial extends FetchNewestBooksState {}

class NewestBooksLoading extends FetchNewestBooksState {}

class NewestBooksPaginationLoading extends FetchNewestBooksState {}

class NewestBooksPaginationFailure extends FetchNewestBooksState {
  final String errMessage;

  NewestBooksPaginationFailure(this.errMessage);
}

class NewestBooksFailure extends FetchNewestBooksState {
  final String errMessage;

  NewestBooksFailure(this.errMessage);
}

class NewestBooksSuccess extends FetchNewestBooksState {
  final List<BookEntity> books;

  NewestBooksSuccess(this.books);
}
