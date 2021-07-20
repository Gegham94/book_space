import 'package:book_space/constants/constants.dart';
import 'package:book_space/utilities/bs_colors.dart';
import 'package:book_space/utilities/ui_utilities.dart';
import 'package:flutter/material.dart';

class AuthorizationScaffold extends StatelessWidget {
  final Widget child;
  final String? title;

  const AuthorizationScaffold({
    Key? key,
    required this.child,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BSColors.screenBackground,
      appBar: buildAppBar(
        context: context,
        title: title,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Padding(
            padding: kScaffoldMainPadding,
            child: child,
          ),
        ),
      ),
    );
  }
}
