import 'package:book_space/ui/widgets/bs_book_info_component.dart';
import 'package:book_space/utilities/bs_colors.dart';
import 'package:book_space/utilities/ui_utilities.dart';
import 'package:flutter/material.dart';

class MyLibraryScreen extends StatefulWidget {
  const MyLibraryScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<MyLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BSColors.screenBackground,
      appBar: buildAppBar(
        context: context,
        title: 'My Library',
        bgColor: BSColors.mainOrange,
        titleColor: BSColors.screenBackground,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return buildBookInfoComponent(
            context: context,
            bookName: 'Baby Caming',
            bookAuthorName: 'Jon Lenon',
            bookInitialRating: 3,
            bookPrice: 15.99,
          );
        },
      ),
    );
  }
}
