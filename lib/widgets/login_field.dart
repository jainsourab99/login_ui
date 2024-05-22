import 'package:flutter/material.dart';
import 'package:login_ui/pallete.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Pallete.gradient2,
        width: 3,
      ),
      borderRadius: BorderRadius.circular(10),
    );
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Pallete.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          focusedBorder: border,
        ),
      ),
    );
  }
}
