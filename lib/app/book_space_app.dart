import 'package:book_space/ui/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

class BookSpaceApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookSpace',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SignInScreen(),
    );
  }
}
