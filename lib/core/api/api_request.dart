import 'dart:convert';

import 'package:book_space/core/api/api_strings.dart';
import 'package:http/http.dart' as http;

class APIRequest {
  Future<Map<String, dynamic>> getRequest({required String endPoint}) async {
    Uri _url = Uri.https(APIStrings.books_url, endPoint);

    return await http.Client().get(_url).then((value) {
      String bodyValue = value.body;
      return bodyValue;
    }).then(
      (value) {
        Map<String, dynamic> jsonObject = jsonDecode(value);
        return jsonObject;
      },
    );
  }
}
