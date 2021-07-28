import 'package:book_space/ui/screens/interests/interests_screen.dart';
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
      home: InterestsScreen(),

    );
  }
}