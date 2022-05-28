import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woski_garnek/ViewModels/ViewModel.dart';
import 'package:woski_garnek/kontakt.dart';
import 'package:woski_garnek/menu.dart';
import 'package:woski_garnek/o_nas.dart';
import 'package:woski_garnek/polecane.dart';
import 'package:woski_garnek/zamowodbierz.dart';
import 'package:woski_garnek/zarezerwuj.dart';

import '../lokalizacja.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: [
          Text(
            "Big Title",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "Subtitle",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10.0),
              color: HexColor("#383127"),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Row(
                children: [
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: Theme.of(context).textTheme.headlineMedium),
                    onPressed: () {
                      ViewModel.addComments(dish: "Kebab", comment: "test");

                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => MyHomePage()),
                      // );
                    },
                    child: Text('Strona Główna',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: Theme.of(context).textTheme.headlineMedium),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Polecane()),
                      );
                    },
                    child: Text('Polecane',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: Theme.of(context).textTheme.headlineMedium),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ZamowOdbierz()),
                      );
                    },
                    child: Text('Zamów/Odbierz',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: Theme.of(context).textTheme.headlineMedium),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ZarezerwujStolik()),
                      );
                    },
                    child: Text('Zarezerwuj stolik',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: Theme.of(context).textTheme.headlineMedium),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Menu()),
                      );
                    },
                    child: Text('Menu',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: Theme.of(context).textTheme.headlineMedium),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Lokalizacja()),
                      );
                    },
                    child: Text('Lokalizacja',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: Theme.of(context).textTheme.headlineMedium),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ONas()),
                      );
                    },
                    child: Text('O nas',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: Theme.of(context).textTheme.headlineMedium),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Kontakt()),
                      );
                    },
                    child: Text('Kontakt',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                  const Spacer(),
                ],
              ))
        ],
      ),
    );
  }
}
