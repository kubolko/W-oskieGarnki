import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:woski_garnek/homepage.dart';

import 'homepage.dart';
import 'themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
        apiKey: "AIzaSyAoDcEWHD6rXaggFZsXgfyntP_TNIh0X6A",
        authDomain: "wloskiegarnki.firebaseapp.com",
        projectId: "wloskiegarnki",
        storageBucket: "wloskiegarnki.appspot.com",
        messagingSenderId: "1006206635664",
        appId: "1:1006206635664:web:ecb749de4e9a7ff18b1215"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      home: MyHomePage(),
    );
  }
}
