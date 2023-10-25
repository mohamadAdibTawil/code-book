import 'package:code_book/contants.dart';
import 'package:flutter/material.dart';

class CategoriesLine extends StatefulWidget {
  const CategoriesLine({
    super.key,
  });

  @override
  State<CategoriesLine> createState() => _CategoriesLineState();
}

class _CategoriesLineState extends State<CategoriesLine> {
  String selectedText = 'All';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedText = 'All';
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 2.5),
              width: 85,
              decoration: selectedText == 'All'
                  ? BoxDecoration(
                      color: kPrimaryColor.withOpacity(.5),
                      borderRadius: BorderRadius.circular(29),
                    )
                  : const BoxDecoration(),
              child: Center(
                child: Text(
                  'All',
                  style: selectedText == 'All'
                      ? const TextStyle(color: kPrimaryColor)
                      : const TextStyle(color: kSliverColor),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedText = 'Flutter';
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 2.5),
              width: 85,
              decoration: selectedText == 'Flutter'
                  ? BoxDecoration(
                      color: kPrimaryColor.withOpacity(.5),
                      borderRadius: BorderRadius.circular(29),
                    )
                  : const BoxDecoration(),
              child: Center(
                child: Text(
                  'Flutter',
                  style: selectedText == 'Flutter'
                      ? const TextStyle(color: kPrimaryColor)
                      : const TextStyle(color: kSliverColor),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedText = 'Algorithms';
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 2.5),
              width: 85,
              decoration: selectedText == 'Algorithms'
                  ? BoxDecoration(
                      color: kPrimaryColor.withOpacity(.5),
                      borderRadius: BorderRadius.circular(29),
                    )
                  : const BoxDecoration(),
              child: Center(
                child: Text(
                  'Algorithms',
                  style: selectedText == 'Algorithms'
                      ? const TextStyle(color: kPrimaryColor)
                      : const TextStyle(color: kSliverColor),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedText = 'JavaScript';
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 2.5),
              width: 85,
              decoration: selectedText == 'JavaScript'
                  ? BoxDecoration(
                      color: kPrimaryColor.withOpacity(.5),
                      borderRadius: BorderRadius.circular(29),
                    )
                  : const BoxDecoration(),
              child: Center(
                child: Text(
                  'JavaScript',
                  style: selectedText == 'JavaScript'
                      ? const TextStyle(color: kPrimaryColor)
                      : const TextStyle(color: kSliverColor),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedText = 'Python';
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 2.5),
              width: 85,
              decoration: selectedText == 'Python'
                  ? BoxDecoration(
                      color: kPrimaryColor.withOpacity(.5),
                      borderRadius: BorderRadius.circular(29),
                    )
                  : const BoxDecoration(),
              child: Center(
                child: Text(
                  'Python',
                  style: selectedText == 'Python'
                      ? const TextStyle(color: kPrimaryColor)
                      : const TextStyle(color: kSliverColor),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedText = 'PHP';
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 2.5),
              width: 85,
              decoration: selectedText == 'PHP'
                  ? BoxDecoration(
                      color: kPrimaryColor.withOpacity(.5),
                      borderRadius: BorderRadius.circular(29),
                    )
                  : const BoxDecoration(),
              child: Center(
                child: Text(
                  'PHP',
                  style: selectedText == 'PHP'
                      ? const TextStyle(color: kPrimaryColor)
                      : const TextStyle(color: kSliverColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
