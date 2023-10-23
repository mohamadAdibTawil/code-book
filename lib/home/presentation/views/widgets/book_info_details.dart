import 'package:cached_network_image/cached_network_image.dart';
import 'package:code_book/home/domain/entities/book_entity.dart';
import 'package:code_book/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../contants.dart';

class BookInfoItem extends StatelessWidget {
  const BookInfoItem({
    Key? key,
    required this.book,
  }) : super(key: key);
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    int splitIndex = book.title.indexOf(' ', book.title.length ~/ 2);
    var size = MediaQuery.of(context).size;
    return Flex(
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.horizontal,
      children: [
        Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    splitIndex != -1
                        ? book.title.substring(0, splitIndex)
                        : book.title,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: 28,
                          color: kWhiteColor,
                        ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.005),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 0),
                  child: Text(
                    splitIndex != -1
                        ? book.title.substring(splitIndex + 1)
                        : '',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: size.width * .3,
                          padding: EdgeInsets.only(top: size.height * .02),
                          child: Text(
                            book.description,
                            maxLines: 4,
                            style: const TextStyle(
                              fontSize: 10,
                              color: kSliverColor,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: size.height * .015),
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Read",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 20,
                            color: kSliverColor,
                          ),
                          onPressed: () {},
                        ),
                         BookRating(score: book.averageRating),
                      ],
                    )
                  ],
                )
              ],
            )),
        Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                alignment: Alignment.topRight,
                height: double.infinity,
                imageUrl: book.imageLinksThumbnail,
                fit: BoxFit.fill,
              ),
            )),
      ],
    );
  }
}
