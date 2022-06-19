// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:woski_garnek/homepage.dart';
//
// import 'Auth/screens/splash_screen.dart';
// import 'Auth/utils/globals.dart';
// import 'Auth/utils/route_generator.dart';
// import 'themes.dart';
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     // Replace with actual values
//     options: const FirebaseOptions(
//         apiKey: "AIzaSyAoDcEWHD6rXaggFZsXgfyntP_TNIh0X6A",
//         authDomain: "wloskiegarnki.firebaseapp.com",
//         projectId: "wloskiegarnki",
//         storageBucket: "wloskiegarnki.appspot.com",
//         messagingSenderId: "1006206635664",
//         appId: "1:1006206635664:web:ecb749de4e9a7ff18b1215"),
//   );
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // theme: CustomTheme.lightTheme,
//       theme: AppTheme.lightTheme,
//       darkTheme: AppTheme.darkTheme,
//       title: 'FirebasePhoneAuthHandler Demo',
//       scaffoldMessengerKey: Globals.scaffoldMessengerKey,
//       onGenerateRoute: RouteGenerator.generateRoute,
//       initialRoute: SplashScreen.id,
//     );
//   }
// }
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/material.dart';
import 'package:woski_garnek/homepage.dart';
import 'package:woski_garnek/themes.dart';
import 'Auth/firebase_options.dart';
import 'Auth/utils/app_theme.dart';
import 'Auth/utils/globals.dart';
import 'Auth/utils/route_generator.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initializeDateFormatting().then((_) => runApp(_MainApp()));
}

class _MainApp extends StatelessWidget {
  const _MainApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirebasePhoneAuthProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Włoskie Garnki! 🍝',
        scaffoldMessengerKey: Globals.scaffoldMessengerKey,
        theme: CustomTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: MyHomePage.id,
      ),
    );
  }
}

