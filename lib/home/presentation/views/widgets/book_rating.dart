import 'package:flutter/material.dart';

import '../../../../contants.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        color: kDarkBlackColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 7),
            blurRadius: 20,
            color: kShadowColor.withOpacity(.9),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          const Icon(
            Icons.star,
            color: kIconColor,
            size: 15,
          ),
          const SizedBox(height: 5),
          Text(
            "$score",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
