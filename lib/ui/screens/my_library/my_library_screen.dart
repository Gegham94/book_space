import 'package:book_space/constants/constants.dart';
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Padding(
            padding: kScaffoldMainPadding,
            child: Column(),
          ),
        ),
      ),
    );
  }
}
