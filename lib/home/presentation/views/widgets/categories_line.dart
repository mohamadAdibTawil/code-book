import 'package:code_book/contants.dart';
import 'package:flutter/material.dart';

class CategoriesLine extends StatelessWidget {
  const CategoriesLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 80,
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(.5),
            borderRadius: BorderRadius.circular(29),
          ),
          child: const Center(
            child: Text(
              'Flutter',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ),
        const Center(
          child: Text(
            'Algorithms',
            style: TextStyle(color: kSliverColor),
          ),
        ),
        const Center(
          child: Text(
            'python',
            style: TextStyle(color: kSliverColor),
          ),
        ),
        const Center(
          child: Text(
            'JavaScript',
            style: TextStyle(color: kSliverColor),
          ),
        ),
        const Center(
          child: Text(
            'PHP',
            style: TextStyle(color: kSliverColor),
          ),
        ),
      ],
    );
  }
}
