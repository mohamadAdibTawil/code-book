import 'package:code_book/core/utils/functions/build_error_snack_bar.dart';
import 'package:code_book/home/domain/entities/book_entity.dart';
import 'package:code_book/home/presentation/manger/popular_books_cubit/cubit/popular_books_cubit_cubit.dart';
import 'package:code_book/home/presentation/views/widgets/book_stack_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookStackListBlocConsumer extends StatefulWidget {
  const BookStackListBlocConsumer({
    super.key,
  });

  @override
  State<BookStackListBlocConsumer> createState() =>
      _BookStackListBlocConsumerState();
}

class _BookStackListBlocConsumerState extends State<BookStackListBlocConsumer> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PopularBooksCubit, PopularBooksCubitState>(
      listener: (context, state) {
        if (state is PopularBooksSuccess) {
          books.addAll(state.books);
        }

        if (state is PopularBooksPaginationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            buildErrorWidget(state.errMessage),
          );
        }
      },
      builder: (context, state) {
        if (state is PopularBooksSuccess ||
            state is PopularBooksPaginationLoading ||
            state is PopularBooksPaginationFailure) {
          return BookStackListView(books: books);
        } else if (state is PopularBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
