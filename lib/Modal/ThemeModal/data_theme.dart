import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme.dark(
      primary: Color.fromARGB(255, 20, 20, 20),
      secondary: Color.fromARGB(255, 30, 30, 30),
      tertiary: Colors.white,
      inversePrimary: Colors.black),
);

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.light(
      primary: Colors.grey.shade300,
      secondary: Colors.grey.shade200,
      tertiary: Colors.black,
      inversePrimary: Colors.white),
);
