import 'package:code_book/contants.dart';
import 'package:flutter/material.dart';

class RotatedText extends StatelessWidget {
  const RotatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            'New',
            style: TextStyle(color: kSliverColor),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            'Trend',
            style: TextStyle(color: kSliverColor),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            'Popular',
          ),
        ),
      ],
    );
  }
}
