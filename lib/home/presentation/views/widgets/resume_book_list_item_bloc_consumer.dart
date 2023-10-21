// import 'package:code_book/home/domain/entities/book_entity.dart';
// import 'package:code_book/home/presentation/manger/popular_books_cubit/cubit/popular_books_cubit_cubit.dart';
// import 'package:code_book/home/presentation/views/widgets/resume_book_list_view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ResumeBookListItemBlocConsumer extends StatefulWidget {
//   const ResumeBookListItemBlocConsumer({
//     super.key,
//   });

//   @override
//   State<ResumeBookListItemBlocConsumer> createState() =>
//       _ResumeBookListItemBlocConsumerState();
// }

// class _ResumeBookListItemBlocConsumerState
//     extends State<ResumeBookListItemBlocConsumer> {
//   List<BookEntity> books = [];
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<PopularBooksCubit, PopularBooksCubitState>(
//       listener: (context, state) {
//         if (state is PopularBooksSuccess) {
//           books.addAll(state.books);
//         }

//         //  if (state is FeaturedBooksPaginationFailure) {
//         //   ScaffoldMessenger.of(context).showSnackBar(
//         //     buildErrorWidget(state.errMessage),
//         //   );
//         // }
//       },
//       builder: (context, state) {
//         if (state is PopularBooksSuccess  ||
//             state is PopularBooksPaginationLoading ||
//             state is PopularBooksPaginationFailure) {
//           return ListView.builder(
//             itemBuilder: (BuildContext context, int index) {
//               return ResumeBookListView(
//                 books: books,
//               );
//             },
//           );
//         } else if (state is PopularBooksFailure) {
//           return Text(state.errMessage);
//         } else {
//           return const CircularProgressIndicator();
//         }
//       },
//     );
//   }
// }
