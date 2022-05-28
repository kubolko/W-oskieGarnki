import 'package:flutter/material.dart';

import 'Widgets/Footer.dart';
import 'Widgets/MenuWidget.dart';

class ONas extends StatelessWidget {
  const ONas({Key? key}) : super(key: key);

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'O nas',
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
                  ),
                  SizedBox(width: 150),
                  CircleAvatar(
                      backgroundImage: AssetImage(
                        'Images/Chef.png',
                      ),
                      radius: MediaQuery.of(context).size.width / 10),
                ],
              ),
              Spacer(),
              Footer()
            ]),
      ),
    );
  }
}
