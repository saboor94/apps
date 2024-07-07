import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final bool enabled;
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.enabled});

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled:enabled ,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          fillColor: Colors.grey[200],
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey)),
    );
  }
}