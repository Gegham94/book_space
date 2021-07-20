import 'package:book_space/constants/widget_styles.dart';
import 'package:book_space/utilities/bs_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar({
  required BuildContext context,
  String? title,
}) {
  return AppBar(
    title: title != null
        ? Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: BSColors.textBlackColor),
          )
        : null,
    backgroundColor: BSColors.screenBackground,
    centerTitle: true,
    leadingWidth: 0.0,
    elevation: 0,
  );
}

Widget buildSubmitButton({
  required void Function() onPress,
  required String title,
}) {
  return ElevatedButton(
    onPressed: onPress,
    child: Text(
      title,
      style: buttonTextStyle,
    ),
    style: ElevatedButton.styleFrom(
      elevation: 0,
      primary: BSColors.mainOrange,
      padding: EdgeInsets.symmetric(vertical: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      textStyle: buttonTextStyle,
    ),
  );
}
