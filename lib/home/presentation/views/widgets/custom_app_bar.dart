import 'package:code_book/contants.dart';
import 'package:code_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'What Would You\nLike To ',
                style: Styles.textStyle30,
              ),
              TextSpan(
                text: 'Read ?',
                style: Styles.textStyle30.copyWith(color: kPrimaryColor),
              ),
            ],
          ),
        ),
        const Spacer(),
        SizedBox(
          height: size.height * .12,
          width: size.width * .12,
          child: const CircleAvatar(
            backgroundColor: kSliverColor,
            backgroundImage: AssetImage('assets/images/logo_only.png'),
          ),
        ),
      ],
    );
  }
}
