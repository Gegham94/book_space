import 'package:book_space/app/navigation_screens.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(BookSpaceApp());
}

class BookSpaceApp extends StatelessWidget {
  const BookSpaceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationScreen(),

    );
  }
}