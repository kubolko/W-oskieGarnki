import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    //1
    return ThemeData(
      //2
      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.

      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Color(0xFFF8B960),
        secondary: Color(0xFFF8B960),
      ),
      // secondaryColor: Color()
      // fontFamily: 'Amertha',
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            // fontFamily: 'Amertha',
            fontSize: 69,
            fontWeight: FontWeight.normal,
            color: Color(0xFFF8B960)),
        titleMedium: TextStyle(
            fontFamily: 'Amertha',
            fontSize: 58,
            fontWeight: FontWeight.normal,
            color: Color(0xFFA10412)),
        bodyMedium: TextStyle(
            fontSize: 24, fontWeight: FontWeight.normal, fontFamily: 'Malgun'),
        titleSmall: TextStyle(
            fontSize: 10, fontWeight: FontWeight.bold, fontFamily: 'Malgun'),
        headlineMedium: TextStyle(
            fontSize: 20,
            fontFamily: 'Malgun',
            fontWeight: FontWeight.normal,
            color: Colors.white),
        labelLarge: TextStyle(
            fontSize: 10,
            fontFamily: 'Malgun',
            fontWeight: FontWeight.normal,
            color: Colors.black),
        bodySmall: TextStyle(
            fontSize: 18,
            fontFamily: 'Malgun',
            fontWeight: FontWeight.normal,
            color: Colors.black),
      ),
    );
  }
}
