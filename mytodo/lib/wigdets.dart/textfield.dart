import 'package:flutter/material.dart';


SizedBox myTextFieldPassword(controller) {
  return SizedBox(
    width: double.infinity,
    child: TextField(
      obscureText: true,
      controller: controller,
      decoration: const InputDecoration(
          hintText: '• • • • • • • • •',
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
          border: OutlineInputBorder()),
    ),
  );
}

SizedBox myTextFieldUsername(controller) {
  return SizedBox(
    width: double.infinity,
    child: TextField(
      controller: controller,
      decoration: const InputDecoration(
          hintText: 'Enter your username', border: OutlineInputBorder()),
    ),
  );
}



 


