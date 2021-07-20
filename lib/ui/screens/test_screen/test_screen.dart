import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
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
                                'Baby is Coming',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10.0)),
                          Text(
                            'Phillip Anthony',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black45,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10.0)),
                          RatingBar(
                            itemCount: 5,
                            initialRating: 2.5,
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
                            '\$ 15.99',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
