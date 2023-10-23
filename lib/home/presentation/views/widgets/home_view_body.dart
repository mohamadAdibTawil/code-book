import 'package:code_book/home/presentation/views/widgets/book_stack_bloc_consumer.dart';
import 'package:code_book/home/presentation/views/widgets/categories_line.dart';
import 'package:code_book/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:code_book/home/presentation/views/widgets/rotated_text.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/styles.dart';
import 'text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                right: 24,
                left: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  CustomTextField(),
                ],
              ),
            ),
            SizedBox(
              height: size.height * .36,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    width: 20,
                    child: RotatedText(),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  SizedBox(
                    width: size.width - 50,
                    height: 275,
                    child: const BookStackListBlocConsumer(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 24,
                left: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: CategoriesLine(),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Resume Reading',
                    style: Styles.textStyle30,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // SizedBox(
                  //   height: size.height ,
                  //   child: const ResumeBookListItemBlocConsumer(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
