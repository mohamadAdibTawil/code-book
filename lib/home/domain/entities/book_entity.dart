// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hive/hive.dart';

part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String kindBook;

  @HiveField(1)
  final String idBook;

  @HiveField(2)
  final String etagBook;

  @HiveField(3)
  final String selfLinkBook;

  @HiveField(4)
  final String title;

  @HiveField(5)
  final List<String> authors;

  @HiveField(6)
  final String publisher;

  @HiveField(7)
  final String publishedDate;

  @HiveField(8)
  final String description;

  @HiveField(9)
  final String searchInfoTextSnippet;

  @HiveField(10)
  final bool readingModesText;

  @HiveField(11)
  final bool readingModesImage;

  @HiveField(12)
  final int pageCount;

  @HiveField(13)
  final String printType;

  @HiveField(14)
  final List<String> categories;

  @HiveField(15)
  final String maturityRating;

  @HiveField(16)
  final bool allowAnonLogging;

  @HiveField(17)
  final String contentVersion;

  @HiveField(18)
  final bool panelizationContainsEpubBubbles;

  @HiveField(19)
  final bool panelizationContainsImageBubbles;

  @HiveField(20)
  final String imageLinksSmallThumbnail;

  @HiveField(21)
  final String imageLinksThumbnail;

  @HiveField(22)
  final String language;

  @HiveField(23)
  final String previewLink;

  @HiveField(24)
  final String infoLink;

  @HiveField(25)
  final String canonicalVolumeLink;

  @HiveField(26)
  final String saleInfoCountry;

  @HiveField(27)
  final String saleInfoSaleability;

  @HiveField(28)
  final bool saleInfoIsEbook;

  @HiveField(29)
  final String accessInfoCountry;

  @HiveField(30)
  final String accessInfoViewability;

  @HiveField(31)
  final bool accessInfoEmbeddable;

  @HiveField(32)
  final bool accessInfoPublicDomain;

  @HiveField(33)
  final String accessInfoTextToSpeechPermission;

  @HiveField(34)
  final bool accessInfoEpubIsAvailable;

  @HiveField(35)
  final bool accessInfoPdfIsAvailable;

  @HiveField(36)
  final String accessInfoPdfAcsTokenLink;

  @HiveField(37)
  final String accessInfoWebReaderLink;

  @HiveField(38)
  final String accessInfoAccessViewStatus;

  @HiveField(39)
  final bool accessInfoQuoteSharingAllowed;

  BookEntity({
    required this.kindBook,
    required this.idBook,
    required this.etagBook,
    required this.selfLinkBook,
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.readingModesText,
    required this.readingModesImage,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationContainsEpubBubbles,
    required this.panelizationContainsImageBubbles,
    required this.imageLinksSmallThumbnail,
    required this.imageLinksThumbnail,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
    required this.saleInfoCountry,
    required this.saleInfoSaleability,
    required this.saleInfoIsEbook,
    required this.accessInfoCountry,
    required this.accessInfoViewability,
    required this.accessInfoEmbeddable,
    required this.accessInfoPublicDomain,
    required this.accessInfoTextToSpeechPermission,
    required this.accessInfoEpubIsAvailable,
    required this.accessInfoPdfIsAvailable,
    required this.accessInfoPdfAcsTokenLink,
    required this.accessInfoWebReaderLink,
    required this.accessInfoAccessViewStatus,
    required this.accessInfoQuoteSharingAllowed,
    required this.searchInfoTextSnippet,
  });

}

  // factory BookEntity.fromJson(Map<String, dynamic> json) {
  //   final volumeInfo = json['volumeInfo'] ?? {};
  //   final readingModes = volumeInfo['readingModes'] ?? {};
  //   final panelizationSummary = volumeInfo['panelizationSummary'] ?? {};
  //   final imageLinks = volumeInfo['imageLinks'] ?? {};
  //   final saleInfo = json['saleInfo'] ?? {};
  //   final accessInfo = json['accessInfo'] ?? {};
  //   final epub = accessInfo['epub'] ?? {};
  //   final pdf = accessInfo['pdf'] ?? {};
  //   final searchInfo = json['searchInfo'] ?? {};

  //   return BookEntity(
  //     kind: json['kind'] ?? '',
  //     id: json['id'] ?? '',
  //     etag: json['etag'] ?? '',
  //     selfLink: json['selfLink'] ?? '',
  //     title: volumeInfo['title'] ?? '',
  //     authors: (volumeInfo['authors'] as List<dynamic>?)
  //             ?.map((author) => author.toString())
  //             .toList() ??
  //         [],
  //     publisher: volumeInfo['publisher'] ?? '',
  //     publishedDate: volumeInfo['publishedDate'] ?? '',
  //     description: volumeInfo['description'] ?? '',
  //     readingModesText: readingModes['text'] ?? false,
  //     readingModesImage: readingModes['image'] ?? false,
  //     pageCount: volumeInfo['pageCount'] ?? 0,
  //     printType: volumeInfo['printType'] ?? '',
  //     categories: (volumeInfo['categories'] as List<dynamic>?)
  //             ?.map((category) => category.toString())
  //             .toList() ??
  //         [],
  //     maturityRating: volumeInfo['maturityRating'] ?? '',
  //     allowAnonLogging: volumeInfo['allowAnonLogging'] ?? false,
  //     contentVersion: volumeInfo['contentVersion'] ?? '',
  //     panelizationContainsEpubBubbles:
  //         panelizationSummary['containsEpubBubbles'] ?? false,
  //     panelizationContainsImageBubbles:
  //         panelizationSummary['containsImageBubbles'] ?? false,
  //     imageLinksSmallThumbnail: imageLinks['smallThumbnail'] ?? '',
  //     imageLinksThumbnail: imageLinks['thumbnail'] ?? '',
  //     language: volumeInfo['language'] ?? '',
  //     previewLink: volumeInfo['previewLink'] ?? '',
  //     infoLink: volumeInfo['infoLink'] ?? '',
  //     canonicalVolumeLink: volumeInfo['canonicalVolumeLink'] ?? '',
  //     saleInfoCountry: saleInfo['country'] ?? '',
  //     saleInfoSaleability: saleInfo['saleability'] ?? '',
  //     saleInfoIsEbook: saleInfo['isEbook'] ?? false,
  //     accessInfoCountry: accessInfo['country'] ?? '',
  //     accessInfoViewability: accessInfo['viewability'] ?? '',
  //     accessInfoEmbeddable: accessInfo['embeddable'] ?? false,
  //     accessInfoPublicDomain: accessInfo['publicDomain'] ?? false,
  //     accessInfoTextToSpeechPermission:
  //         accessInfo['textToSpeechPermission'] ?? '',
  //     accessInfoEpubIsAvailable: epub['isAvailable'] ?? false,
  //     accessInfoPdfIsAvailable: pdf['isAvailable'] ?? false,
  //     accessInfoPdfAcsTokenLink: pdf['acsTokenLink'] ?? '',
  //     accessInfoWebReaderLink: accessInfo['webReaderLink'] ?? '',
  //     accessInfoAccessViewStatus: accessInfo['accessViewStatus'] ?? '',
  //     accessInfoQuoteSharingAllowed: accessInfo['quoteSharingAllowed'] ?? false,
  //     searchInfoTextSnippet: searchInfo['textSnippet'] ?? '',
  //   );
  // }
// @HiveType(typeId: 0)
// class BookEntity extends HiveObject {
//   @HiveField(0)
//   final String bookId;
//    @HiveField(1)
//   final String title;
//    @HiveField(2)
//   final double price;
//    @HiveField(3)
//   final String author;
//    @HiveField(4)
//   final String image;
//    @HiveField(5)
//   final String rating;
//    @HiveField(6)
//   final String? description;
//    @HiveField(7)
//   final int? pageCount;
//    @HiveField(8)
//   final List<String>? categories;
//    @HiveField(9)
//   final String? language;
//    @HiveField(10)
//   final bool? isEbook;
//    @HiveField(11)
//   final String? textToSpeechPermission;
//    @HiveField(12)
//   final String? webReaderLink;
//    @HiveField(13)
//   final bool ?isPdfAvailable;
//    @HiveField(14)
//   BookEntity({
//     required this.bookId,
//     required this.title,
//     required this.price,
//     required this.author,
//     required this.image,
//     required this.rating,
//     this.description,
//     this.pageCount,
//     this.categories,
//     this.language,
//     this.isEbook,
//     this.textToSpeechPermission,
//     this.webReaderLink,
//     this.isPdfAvailable,
   
//   });
// }
