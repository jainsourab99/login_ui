import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String buttonTitle;
  final double hPadding;
  final VoidCallback onPressed;
  const SocialButton({
    super.key,
    required this.iconPath,
    required this.buttonTitle,
    this.hPadding = 100,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        color: Pallete.whiteColor,
      ),
      label: Text(
        buttonTitle,
        style: const TextStyle(
          color: Pallete.whiteColor,
          fontSize: 15,
        ),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: hPadding,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
