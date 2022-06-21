import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import 'Widgets/menu_widget.dart';

class Lokalizacja extends StatelessWidget {
  static const id = 'Lokalizacja';
  const Lokalizacja({Key? key}) : super(key: key);

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
                title: 'Lokalizacja',
                subTitle: 'Blisko Twojego Domu!',
              ),
             const SizedBox(height: 125),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, //Center Row contents horizontally,
                crossAxisAlignment:
                    CrossAxisAlignment.center, //Center Row contents vertically,
                children: [
                  SimpleShadow(
                    child: Image.asset(
                      'Images/Lokalizacja.png',
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                  ),
                  const SizedBox(width: 150),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Buon giorno!',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Text(
                          "Włoskie Garnki to lokal usytuowany w idealnej lokalizacji w gdańskim Brzeźnie, pozwalającej poczuć niesamowity klimat przytulnej, neapolitańskiej dzielnicy. Odległość 500 metrów od plaży i bliskość hoteli Kawka oraz von Biberstein tworzą z niej świetne miejsce także dla turystów w sezonie letnim. Zapraszamy na ulicę Sezamkową 13 już dziś!",
                          style: Theme.of(context).textTheme.bodySmall,
                          // style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const Spacer(),
            ]),
      ),
    );
  }
}
