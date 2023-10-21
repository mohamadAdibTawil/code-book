import '../../../../contants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1d1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: kBlackOpacityColor,
            hintText: 'Search',
            hintStyle: const TextStyle(
              color: kSliverIconColor,
              fontSize: 14,
            ),
            contentPadding: const EdgeInsets.all(16),
            prefixIcon: iconTextField(kSearchIcon),
            suffixIcon: SizedBox(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VerticalDivider(
                      color: kSliverIconColor,
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.1,
                    ),
                    iconTextField(
                      kFilterIcon,
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}

Padding iconTextField(String iconPath) {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: SvgPicture.asset(iconPath),
  );
}
