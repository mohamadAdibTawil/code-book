import 'package:code_book/home/presentation/views/widgets/book_rating.dart';
import 'package:code_book/home/presentation/views/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

import '../../../../contants.dart';

class SuggetionBook extends StatelessWidget {
  const SuggetionBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.only(left: 24, top: 24, right: 150),
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(29),
              color: kBlackColor,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 33,
                  color: const Color(0xFF313131).withOpacity(.84),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: const TextSpan(
                    style: TextStyle(color: kWhiteColor),
                    children: [
                      TextSpan(
                        text: "How To Win \nFriends & Influence \n",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: "Gary Venchuk",
                        style: TextStyle(color: kWhiteColor),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    const BookRating(
                      score: 4,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: RoundedButton(
                        color: kPrimaryColor,
                        press: () {},
                        text: "Read",
                        verticalPadding: 10,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
              height: 180,
              width: 120,
              child: Container(),
              // CustomBookImage(image: kBookImageHarry),
            )
            // Image.asset(
            //   kBookImageHarry,
            //   width: 150,
            //   fit: BoxFit.fitWidth,
            // ),
            ),
      ],
    );
  }
}
