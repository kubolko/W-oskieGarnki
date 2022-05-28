import 'package:flutter/material.dart';

import 'Widgets/MenuWidget.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<Menu> {
  static const List<String> strArr = [
    "Makro elementy",
    "Makro elementy",
    "Makro elementy",
    "Makro elementy"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              MenuWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, //Center Row contents horizontally,
                crossAxisAlignment:
                    CrossAxisAlignment.center, //Center Row contents vertically,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment
                          .start, //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment
                          .start, //Center Row contents vertically,
                      children: [
                        Text(
                          "Food Name",
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
                        ),
                        Text(
                          "Food Name",
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
                        ),
                        SizedBox(height: 50),
                        Row(children: [
                          for (var i in strArr)
                            Text(i + " | ",
                                style: Theme.of(context).textTheme.bodySmall)
                        ])
                      ])
                ],
              ),
              Spacer(),
            ]),
      ),
    );
  }
}
