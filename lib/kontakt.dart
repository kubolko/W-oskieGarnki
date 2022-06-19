import 'package:flutter/material.dart';

import 'Widgets/MenuWidget.dart';

class Kontakt extends StatelessWidget {
  static const id = 'Kontakt';
  const Kontakt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              MenuWidget(
                title: 'Kontakt',
                subTitle: 'Chętnie odpowiemy na Twoje pytania!',
              ),
              const SizedBox(height: 125),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, //Center Row contents horizontally,
                crossAxisAlignment:
                    CrossAxisAlignment.center, //Center Row contents vertically,
                children: [
                  Image.asset(
                    'Images/Contact.jpg',
                    width: MediaQuery.of(context).size.width / 4,
                  ),
                  SizedBox(width: 150),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Zapraszamy do kontaktu',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Expanded(
                          child: Text(
                            "Włoskie Garnki \n 80-506 Gdańsk Brzeźno \n Sezamkowa 13 \n Telefon: 11 14 20 666 \n włoskiegarnki@garnek.pl",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Spacer(),
            ]),
      ),
    );
  }
}
