import 'package:flutter/material.dart';
import 'package:woski_garnek/Widgets/MenuWidget.dart';

class MyHomePage extends StatefulWidget {
  static const id = 'HomePage';

  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Column(children: <Widget>[
          MenuWidget(
            title: "Włoskie Garnki",
            subTitle: 'Nowoczena, włoska kuchnia w tradycyjnym wydaniu',
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'Images/StronaGlowna.png',
                width: MediaQuery.of(context).size.width / 2,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(width: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Strona główna:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Text(
                    "Witaj we Włoskich Garnkach! Witaj we Włoskich Garnkach! Możliwe, że jesteś tu by znaleźć więcej informacji na temat naszej restauracji, ale mamy nadzieję, że zatrzymamy Cię tu na dłużej. Oprócz karty dań oraz systemu rezerwacji miejsc znajdziesz tu także polecane przez nas dania, blog prowadzony przez naszych mistrzów kuchni oraz filmy z ich oryginalnymi, włoskimi przepisami dzięki którym będziesz mógł/mogła zasmakować niektórych z oferowanych przez Włoskie Garnki doskonale dobranych dań. Nowe przepisy publikujemy we wtorki co dwa tygodnie, a już dziś zapraszamy na nasz blog po film o tradycyjnym weneckim tiramisu! Buon Appetito!",
                     style: Theme.of(context).textTheme.bodySmall,
                    // style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  )
                ],
              )
            ],
          ),
        ]));
  }
}
