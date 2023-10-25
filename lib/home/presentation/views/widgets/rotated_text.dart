import 'package:code_book/contants.dart';
import 'package:flutter/material.dart';

class RotatedText extends StatefulWidget {
  const RotatedText({
    super.key,
  });

  @override
  State<RotatedText> createState() => _RotatedTextState();
}

class _RotatedTextState extends State<RotatedText> {
  String selectedText = 'Popular';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedText = 'New';
              });
            },
            child: Text(
              'New',
              style: TextStyle(
                color: selectedText == 'New' ? Colors.white : kSliverColor,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedText = 'Trend';
              });
            },
            child: Text(
              'Trend',
              style: TextStyle(
                color: selectedText == 'Trend' ? Colors.white : kSliverColor,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedText = 'Popular';
              });
            },
            child: Text(
              'Popular',
              style: TextStyle(
                color: selectedText == 'Popular' ? Colors.white : kSliverColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
