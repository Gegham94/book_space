import 'package:book_space/core/api/api_request.dart';
import 'package:book_space/core/handlers/book_model_handler.dart';
import 'package:book_space/core/models/book/book_model.dart';

class BooksService {
  BooksModelsHandler dataProvider = new BooksModelsHandler();

  Future<List<BooksModel>> getBooks() async {
    return await APIRequest()
        .getRequest(
      endPoint: "api/books",
    )
        .then(
      (value) {
        return value["results"] as List<dynamic>;
      },
    ).then(
      (value) {
        return dataProvider.handleBooksModels(json: value);
      },
    ).catchError(
      (e) {
        print(e.toString());
      },
    );
  }
}
