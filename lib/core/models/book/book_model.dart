import 'package:book_space/core/models/book/book_model_keys.dart';

class BooksModel {
  final String bookName;
  final String bookAuthorName;
  final String bookInitialRating;
  final DateTime bookPrice;

  BooksModel({
    required this.bookName,
    required this.bookAuthorName,
    required this.bookInitialRating,
    required this.bookPrice,
  });

  factory BooksModel.fromJson(Map<String, dynamic> itemJson) {
    return BooksModel(
      bookName: itemJson[BooksModelKeys.bookName] ?? "Book Name",
      bookAuthorName: itemJson[BooksModelKeys.bookAuthorName] ?? "Book Author Name",
      bookInitialRating: itemJson[BooksModelKeys.bookInitialRating] ?? 0.0,
      bookPrice: itemJson[BooksModelKeys.bookPrice] ?? 0.0,
    );
  }
}
