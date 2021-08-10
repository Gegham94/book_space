import 'package:flutter/cupertino.dart';

const kScaffoldMainPadding = EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0);

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}