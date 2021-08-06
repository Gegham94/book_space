import 'package:book_space/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

SafeArea buildBookInfoComponent({
  required BuildContext context,
  required String bookName,
  required String bookAuthorName,
  required double bookInitialRating,
  required double bookPrice,

}) {
  final screenSize = MediaQuery.of(context).size;
  return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Padding(
          padding: kScaffoldMainPadding,
          child: Container(
            child: ListView(
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/books.jpeg'),
                      width: screenSize.width * 0.3,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        width: screenSize.width * 0.12,
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              children: [
                                Text(
                                  bookName,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10.0)),
                            Text(
                              bookAuthorName,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black45,
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10.0)),
                            RatingBar(
                              itemCount: 5,
                              initialRating: bookInitialRating,
                              maxRating: 15,
                              itemSize: 14.0,
                              allowHalfRating: true,
                              ratingWidget: RatingWidget(
                                full: Icon(Icons.star),
                                half: Icon(Icons.star_half),
                                empty: Icon(Icons.star_border_outlined),
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10.0)),
                            Text(
                              '\$ $bookPrice',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
}
