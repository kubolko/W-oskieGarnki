// import 'package:firebase_core/firebase_core.dart';
//
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(const _MainApp());
// }
//
// class _MainApp extends StatelessWidget {
//   const _MainApp({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return FirebasePhoneAuthProvider(
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'FirebasePhoneAuthHandler Demo',
//         scaffoldMessengerKey: Globals.scaffoldMessengerKey,
//         theme: AppTheme.lightTheme,
//         darkTheme: AppTheme.darkTheme,
//         onGenerateRoute: RouteGenerator.generateRoute,
//         initialRoute: SplashScreen.id,
//       ),
//     );
//   }
// }
