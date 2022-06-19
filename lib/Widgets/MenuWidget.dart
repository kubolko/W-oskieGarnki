import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woski_garnek/Polecane.dart';
import 'package:woski_garnek/homepage.dart';
import 'package:woski_garnek/kontakt.dart';
import 'package:woski_garnek/menu.dart';
import 'package:woski_garnek/themes.dart';
import 'package:woski_garnek/zarezerwuj.dart';

import '../Auth/screens/authentication_screen.dart';
import '../Blog.dart';
import '../lokalizacja.dart';
import 'Calendar.dart';

class MenuWidget extends StatelessWidget {
  MenuWidget({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;
  // final TextStyle? passive = CustomTheme.lightTheme.textTheme.headlineMedium;
   final TextStyle? passive = CustomTheme.lightTheme.textTheme.headlineMedium;
  final TextStyle active = const TextStyle(
      fontSize: 20,
      fontFamily: 'Malgun',
      fontWeight: FontWeight.normal,
      color: Colors.amber);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      verticalDirection: VerticalDirection.down,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          subTitle,
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
                if (title == "Strona główna") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: active),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()),
                      );
                    },
                    child: Text('Strona główna'),
                  ),
                ],
                if (title != "Strona główna") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: passive),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()),
                      );
                    },
                    child: Text('Strona główna',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                ],
                const Spacer(),
                if (title == "Polecane") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: active),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Polecane()),
                      );
                    },
                    child: Text('Polecane'),
                  ),
                ],
                if (title != "Polecane") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: passive),
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
                ],
                const Spacer(),
                if (title == "Zarezerwuj stolik") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: active),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ZarezerwujStolik()),
                      );                      // Navigator.pushNamedAndRemoveUntil(
                      //   context,
                      //   AuthenticationScreen.id,
                      //       (route) => true,
                      // );

                    },
                    child: Text('Zarezerwuj stolik'),
                  ),
                ],
                if (title != "Zarezerwuj stolik") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: passive),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  ZarezerwujStolik()),
                      );
                    },
                    child: Text('Zarezerwuj stolik',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                ],
                const Spacer(),
                if (title == "Menu") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: active),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Menu()),
                      );
                    },
                    child: Text('Menu'),
                  ),
                ],
                if (title != "Menu") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: passive),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Menu()),
                      );
                    },
                    child: Text('Menu',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                ],
                const Spacer(),
                if (title == "Lokalizacja") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: active),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Lokalizacja()),
                      );
                    },
                    child: Text('Lokalizacja'),
                  ),
                ],
                if (title != "Lokalizacja") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: passive),
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
                ],
                const Spacer(),
                if (title == "Blog") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: active),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Blog()),
                      );
                    },
                    child: Text('Blog'),
                  ),
                ],
                if (title != "Blog") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: passive),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Blog()),
                      );
                    },
                    child: Text('Blog',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                ],
                const Spacer(),
                if (title == "Kontakt") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: active),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Kontakt()),
                      );
                    },
                    child: Text('Kontakt'),
                  ),
                ],
                if (title != "Kontakt") ...[
                  TextButton(
                    style: TextButton.styleFrom(textStyle: passive),
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
                ],
                const Spacer(),
              ],
            ))
      ],
    );
  }
}
