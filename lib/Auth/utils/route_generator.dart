


import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woski_garnek/Blog.dart';
import 'package:woski_garnek/Polecane.dart';
import 'package:woski_garnek/homepage.dart';
import 'package:woski_garnek/kontakt.dart';
import 'package:woski_garnek/lokalizacja.dart';
import 'package:woski_garnek/menu.dart';
import 'package:woski_garnek/zarezerwuj.dart';

import '../screens/authentication_screen.dart';
import '../screens/LogedIn.dart';
import '../screens/splash_screen.dart';
import '../screens/verify_phone_number_screen.dart';

class RouteGenerator {
  static const _id = 'RouteGenerator';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as dynamic;
    log(_id, name: "Pushed ${settings.name}(${args ?? ''})");
    switch (settings.name) {
      case SplashScreen.id:
        return _route(const SplashScreen());
      case AuthenticationScreen.id:
        return _route(const AuthenticationScreen());
      case VerifyPhoneNumberScreen.id:
        return _route(VerifyPhoneNumberScreen(phoneNumber: args));
      case LogedIn.id:
        return _route(const LogedIn());
      case Blog.id:
        return _route(Blog());
      case MyHomePage.id:
        return _route(const MyHomePage());
      case Kontakt.id:
        return _route(const Kontakt());
      case Lokalizacja.id:
        return _route(const Lokalizacja());
      case Menu.id:
        return _route(const Menu());
      case Polecane.id:
        return _route(const Polecane());
      case ZarezerwujStolik.id:
        return _route(const ZarezerwujStolik());

      default:
        return _errorRoute(settings.name);
    }
  }

  static MaterialPageRoute _route(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);

  static Route<dynamic> _errorRoute(String? name) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('ROUTE \n\n$name\n\nNOT FOUND'),
        ),
      ),
    );
  }
}
