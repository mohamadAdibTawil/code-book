import 'package:code_book/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    Key? key,
    required this.book,
  }) : super(key: key);
  final BookEntity book;
  // final BookEntity indexBook;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: book.imageLinksThumbnail,
          fit: BoxFit.fill,
        ),
        // Image.asset(image, fit: BoxFit.fill),
      ),
    );
  }
}
