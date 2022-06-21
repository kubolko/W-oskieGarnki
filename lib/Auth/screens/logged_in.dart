import 'package:easy_container/easy_container.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/material.dart';
import 'package:woski_garnek/homepage.dart';

import '../utils/globals.dart';
import '../utils/helpers.dart';

class LogedIn extends StatelessWidget {
  static const id = 'LogedInView';

  const LogedIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: SizedBox(
                  width: double.infinity,
                  child: FittedBox(
                    child: Text('Dziękujemy za rezerwację!'),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: FittedBox(
                  child: Text(Globals.firebaseUser!.uid),
                ),
              ),
              EasyContainer(
                onTap: () async {
                  await FirebasePhoneAuthHandler.signOut(context);
                  showSnackBar('Do zobaczenia!');

                  // ignore: use_build_context_synchronously
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    MyHomePage.id,
                    (route) => false,
                  );
                },
                child: const Text('Powróć do menu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
