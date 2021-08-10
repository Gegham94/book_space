import 'package:book_space/core/models/book/book_model.dart';

class BooksModelsHandler {
  List<BooksModel> handleBooksModels({required List<dynamic> json}) {
    List<BooksModel> returnValue = [];

    for (var item in json) {
      Map<String, dynamic> itemJson = item as Map<String, dynamic>;
      BooksModel book = BooksModel(
        bookName: itemJson["bookName"],
        bookAuthorName: itemJson["bookAuthorName"],
        bookInitialRating: itemJson["bookInitialRating"],
        bookPrice: itemJson["bookPrice"],
      );
      returnValue.add(book);
    }
    return returnValue;
  }
}
