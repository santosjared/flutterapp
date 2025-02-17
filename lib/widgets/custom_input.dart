// lib/widgets/custom_input_field.dart

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon, prefixIcon;

  const CustomInputField({super.key, 
    required this.labelText,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color:Color.fromARGB(255, 0, 142, 73)),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon, 
           enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color.fromARGB(255, 0, 121, 62), width: 2.0),
            borderRadius: BorderRadius.circular(8),
          ),
           focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.green, width: 2.5),
            borderRadius: BorderRadius.circular(8),
          ),
          fillColor: const Color.fromARGB(255, 248, 255, 248),
        ),
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
