import 'package:code_book/home/presentation/views/widgets/custom_book_image_loading_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../contants.dart';

class BookStackListItemLoadingIndicator extends StatefulWidget {
  const BookStackListItemLoadingIndicator({super.key});

  @override
  State<BookStackListItemLoadingIndicator> createState() =>
      _BookStackListItemLoadingIndicatorState();
}

class _BookStackListItemLoadingIndicatorState
    extends State<BookStackListItemLoadingIndicator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 255,
      width: 194,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[50],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 20,
            child: SizedBox(
              width: 134,
              height: 195,
              child: CustomBookImageLoadingIndicator(),
            ),
          ),
          Positioned(
            bottom: 45,
            left: 30,
            child: SizedBox(
              width: 150,
              child: Text(
                '',
                style: const TextStyle(
                    color: kWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 30,
            child: SizedBox(
              width: 150,
              child: Text(
                '',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: kWhiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
