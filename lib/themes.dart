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

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class CustomTheme {
//   const CustomTheme._();
//
//   static const _defaultElevation = 2.5;
//
//   static ThemeData _baseTheme(
//       Brightness brightness, {
//         Color? textColor,
//         Color? accentColor,
//         Color? onAccentColor,
//         Color? scaffoldBackgroundColor,
//       }) {
//     late final ColorScheme defaultColorScheme;
//     late final SystemUiOverlayStyle systemUiOverlayStyle;
//     switch (brightness) {
//       case Brightness.light:
//         defaultColorScheme = const ColorScheme.light();
//         systemUiOverlayStyle = SystemUiOverlayStyle.dark;
//         textColor ??= Colors.black;
//         break;
//       case Brightness.dark:
//         defaultColorScheme = const ColorScheme.dark();
//         systemUiOverlayStyle = SystemUiOverlayStyle.light;
//         textColor ??= Colors.white;
//         break;
//     }
//
//     return ThemeData(
//       brightness: brightness,
//       iconTheme: IconThemeData(color: textColor),
//       scaffoldBackgroundColor: scaffoldBackgroundColor,
//       appBarTheme: AppBarTheme(
//         elevation: _defaultElevation,
//         systemOverlayStyle: systemUiOverlayStyle,
//         color: scaffoldBackgroundColor,
//         iconTheme: IconThemeData(color: textColor),
//         actionsIconTheme: IconThemeData(color: textColor),
//         titleTextStyle: TextStyle(
//           color: textColor,
//           fontWeight: FontWeight.w600,
//           fontSize: 20,
//         ),
//       ),
//       colorScheme: defaultColorScheme.copyWith(
//         brightness: brightness,
//         // primary: accentColor,
//         secondary: accentColor,
//         onSecondary: onAccentColor ?? textColor,
//       ),
//       toggleableActiveColor: accentColor,
//       // textSelectionTheme: TextSelectionThemeData(
//       //   cursorColor: accentColor,
//       //   selectionColor: accentColor?.withOpacity(0.75),
//       //   selectionHandleColor: accentColor?.withOpacity(0.75),
//       // ),
//       dialogTheme: DialogTheme(
//         elevation: _defaultElevation,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//       ),
//       floatingActionButtonTheme: const FloatingActionButtonThemeData(
//         elevation: _defaultElevation,
//         highlightElevation: _defaultElevation * 2,
//         // backgroundColor: accentColor,
//       ),
//       snackBarTheme: SnackBarThemeData(
//         elevation: _defaultElevation,
//         backgroundColor: accentColor,
//         contentTextStyle: TextStyle(
//           fontSize: 16,
//           color: onAccentColor ?? textColor,
//         ),
//         behavior: SnackBarBehavior.floating,
//         // shape: RoundedRectangleBorder(
//         //   borderRadius: BorderRadius.circular(20),
//         // ),
//       ),
//       // cupertinoOverrideTheme: CupertinoThemeData(
//       //   brightness: brightness,
//       //   scaffoldBackgroundColor: scaffoldBackgroundColor,
//       // ),
//       pageTransitionsTheme: PageTransitionsTheme(
//         builders: <TargetPlatform, PageTransitionsBuilder>{
//           for (final targetValue in TargetPlatform.values)
//             targetValue: const _SlideLeftTransitionsBuilder(),
//         },
//       ),
//     );
//   }
//
//   static final lightTheme = _baseTheme(
//     Brightness.light,
//     accentColor: const Color(0xFF0669F8),
//     onAccentColor: Colors.white,
//     scaffoldBackgroundColor: const Color(0xFFDCDFE2),
//   ).copyWith(
//     cardColor: const Color(0xFFCACFD6),
//     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//       backgroundColor: Color(0xFFFAFAFA),
//     ),
//   );
//
//   static final darkTheme = _baseTheme(
//     Brightness.dark,
//     accentColor: Colors.tealAccent,
//     onAccentColor: Colors.black,
//     scaffoldBackgroundColor: const Color(0xFF040F2D),
//   ).copyWith(
//     cardColor: const Color(0xFF091642),
//     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//       backgroundColor: Color(0xFF050C25),
//     ),
//   );
// }
//
// class _SlideLeftTransitionsBuilder extends PageTransitionsBuilder {
//   const _SlideLeftTransitionsBuilder();
//
//   @override
//   Widget buildTransitions<T>(_, __, animation, ___, child) {
//     return SlideTransition(
//       position: CurvedAnimation(
//         parent: animation,
//         curve: Curves.easeIn,
//         reverseCurve: Curves.easeOut,
//       ).drive(Tween<Offset>(
//         begin: const Offset(1, 0),
//         end: const Offset(0, 0),
//       )),
//       child: child,
//     );
//   }
// }
