import 'package:book_space/constants/constants.dart';
import 'package:flutter/material.dart';

dynamic buildHomeBookComponent({
  required BuildContext context,
  required String bookName,
  required String bookAuthorName,
  required double bookInitialRating,
  required double bookPrice,
}) {
  final screenSize = MediaQuery.of(context).size;
  return Padding(
    padding: kScaffoldMainPadding,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage('assets/images/books.jpeg'),
          width: screenSize.width * 0.4,
        ),
        Padding(padding: EdgeInsets.only(bottom: 10.0)),
        Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bookName,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Text(
                '\$ $bookPrice',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
