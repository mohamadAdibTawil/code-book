import 'package:code_book/home/domain/entities/book_entity.dart';
import 'package:code_book/home/presentation/views/widgets/book_details_item.dart';
import 'package:code_book/home/presentation/views/widgets/suggetion_book.dart';
import 'package:flutter/material.dart';
import '../../../../contants.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BookDetailsItem(book: book),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headlineMedium,
                    children: const [
                      TextSpan(
                        text: "You might also ",
                      ),
                      TextSpan(
                        text: "like….",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                    // onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoaderPageNew()));},
                    child: const SuggetionBook())
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
