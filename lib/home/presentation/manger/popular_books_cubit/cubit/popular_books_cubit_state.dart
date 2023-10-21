part of 'popular_books_cubit_cubit.dart';

@immutable
sealed class PopularBooksCubitState {}

final class PopularBooksCubitInitial extends PopularBooksCubitState {}

class PopularBooksLoading extends PopularBooksCubitState {}

class PopularBooksPaginationLoading extends PopularBooksCubitState {}

class PopularBooksPaginationFailure extends PopularBooksCubitState {
  final String errMessage;

  PopularBooksPaginationFailure(this.errMessage);
}

class PopularBooksFailure extends PopularBooksCubitState {
  final String errMessage;
  

  PopularBooksFailure(this.errMessage);
}

class PopularBooksSuccess extends PopularBooksCubitState {
  final List<BookEntity> books;

  PopularBooksSuccess(this.books);
}
