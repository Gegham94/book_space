import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BSSocialButton extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final void Function()? onPress;
  final double? iconSize;

  BSSocialButton({
    required this.icon,
    required this.onPress,
    this.color,
    this.iconSize,
  });

  factory BSSocialButton.facebook({void Function()? onPress}) {
    return BSSocialButton(
      icon: FontAwesomeIcons.facebookF,
      onPress: onPress,
      color: Colors.blue,
      iconSize: 16.0,
    );
  }

  factory BSSocialButton.google({void Function()? onPress}) {
    return BSSocialButton(
      icon: FontAwesomeIcons.google,
      onPress: onPress,
      color: Colors.red,
      iconSize: 16.0,
    );
  }

  factory BSSocialButton.apple({void Function()? onPress}) {
    return BSSocialButton(
      icon: FontAwesomeIcons.apple,
      onPress: onPress,
      color: Colors.grey,
      iconSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),

      // color: Colors.deepOrange,
      child: GestureDetector(
        onTap: onPress,
        child: Icon(
          icon,
          color: Colors.white,
          size: iconSize,
        ),
      ),
    );
  }
}
