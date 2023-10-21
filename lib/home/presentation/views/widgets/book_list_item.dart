import 'package:code_book/contants.dart';
import 'package:code_book/home/domain/entities/book_entity.dart';
import 'package:code_book/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({
    super.key,
    required this.book,
  });

  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: size.width * .18,
          height: size.height * .15,
          child: CustomBookImage(book: book),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 3,
            ),
            SizedBox(
              width: size.width * .52,
              child: Text(
                book.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
             '${ book.authors}' ,
              // ?? 'The Auther Name',
              style: const TextStyle(fontSize: 14, color: kSliverColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Chapters Number',
              style: TextStyle(fontSize: 16, color: kPrimaryColor),
            ),
            const SizedBox(
              height: 2,
            ),
          ],
        ),
        const Spacer(),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '00:42:29',
              style: TextStyle(color: kSliverColor),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '00:56:37',
              style: TextStyle(color: kWhiteColor),
            )
          ],
        )
      ],
    );
  }
}
