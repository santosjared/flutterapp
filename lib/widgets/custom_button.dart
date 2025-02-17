// lib/widgets/login_button.dart

import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const LoginButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 0, 155, 80),
      foregroundColor: Colors.white
      );
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: style,
      child: Text(text),
    );
  }
}
