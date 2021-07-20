import 'package:book_space/constants/widget_styles.dart';
import 'package:book_space/utilities/bs_colors.dart';
import 'package:flutter/material.dart';

class LinkedText extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final String linkText;

  const LinkedText({
    Key? key,
    required this.text,
    required this.linkText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: text,
            style: lightGrayTextStyle,
            children: [
              WidgetSpan(
                child: GestureDetector(
                  onTap: onTap,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      linkText,
                      style: TextStyle(
                        color: BSColors.lightOrange,
                        fontSize: 14.0,
                        fontFamily: 'Roboto_Bold',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
