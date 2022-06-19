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
                    'Buon giorno!',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Expanded(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi accumsan consectetur lacus, vel suscipit mauris luctus sit amet. Quisque vel sem sed ligula volutpat imperdiet. Mauris nisl sapien, congue eu purus sit amet, accumsan rhoncus eros. Etiam at erat quis urna eleifend ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet libero ex. ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ]));
  }
}
