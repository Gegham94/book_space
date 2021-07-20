import 'package:book_space/constants/widget_styles.dart';
import 'package:book_space/enums/social_types.dart';
import 'package:flutter/material.dart';

import 'bs_social_button.dart';

class BSSocialButtons extends StatelessWidget {
  final String? title;
  final double itemSpace;
  final void Function(dynamic)? onPressButtons;

  BSSocialButtons({
    Key? key,
    required this.onPressButtons,
    this.title,
    this.itemSpace = 10,
  }) : super(key: key);

  _buildButtonsWidget() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(child: BSSocialButton.facebook(onPress: () {
            onPressButtons!(BSSocialTypes.facebook);
          })),
          SizedBox(
            width: itemSpace,
          ),
          Expanded(child: BSSocialButton.google(onPress: () {
            onPressButtons!(BSSocialTypes.google);
          })),
          SizedBox(
            width: itemSpace,
          ),
          Expanded(child: BSSocialButton.apple(onPress: () {
            onPressButtons!(BSSocialTypes.apple);
          })),
        ],
      );

  @override
  Widget build(BuildContext context) {
    if (title != null && title!.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              title!,
              style: titleTextStyle,
            ),
          ),
          _buildButtonsWidget(),
        ],
      );
    }
    return _buildButtonsWidget();
  }
}
