// import 'package:code_book/home/domain/entities/book_entity.dart';
// import 'package:code_book/home/presentation/manger/popular_books_cubit/cubit/popular_books_cubit_cubit.dart';
// import 'package:code_book/home/presentation/views/widgets/book_list_item.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ResumeBookListView extends StatefulWidget {
//   const ResumeBookListView({
//     super.key,
//     required this.books,
//   });
//   final List<BookEntity> books;

//   @override
//   State<ResumeBookListView> createState() => _ResumeBookListViewState();
// }

// class _ResumeBookListViewState extends State<ResumeBookListView> {
//   late final ScrollController _scrollController;
//   var nextPage = 1;

//   var isLoading = false;
//   @override
//   void initState() {
//     super.initState();
//     _scrollController = ScrollController();
//     _scrollController.addListener(_scrollListener);
//   }

//   void _scrollListener() async {
//     var currentPositions = _scrollController.position.pixels;
//     var maxScrollLength = _scrollController.position.maxScrollExtent;
//     if (currentPositions >= 0.7 * maxScrollLength) {
//       if (!isLoading) {
//         isLoading = true;
//         await BlocProvider.of<PopularBooksCubit>(context)
//             .fetchPopualrBooks(pageNumber: nextPage++);
//         isLoading = false;
//       }
//     }
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SizedBox(
//       height: size.height ,
//       child: ListView.builder(
//         itemBuilder: (context, index) {
//           return SizedBox(
//             height: size.height * 0.15,
//             child: BookListItem(
//               book: widget.books[index],
//             ),
//           );
//         },
//         itemCount: widget.books.length,
//         controller: _scrollController,
//         physics:
//             const NeverScrollableScrollPhysics(), // This line disables scrolling in the ListView
//       ),
//     );
//   }
// }
