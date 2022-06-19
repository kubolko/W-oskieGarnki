import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:woski_garnek/Auth/screens/authentication_screen.dart';
import 'package:woski_garnek/Widgets/Reservationform.dart';
import 'Auth/screens/splash_screen.dart';
import 'Widgets/Calendar.dart';
import 'Widgets/MenuWidget.dart';

class ZarezerwujStolik extends StatelessWidget {
  static const id = 'ZarezerwujStolik';

  const ZarezerwujStolik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              MenuWidget(
                title: 'Zarezerwuj stolik',
                subTitle: 'Serdecznie zapraszamy do rezerwacji internetowej!',
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.width / 1.5,
                            child: Calendar()),
                      ],
                    ),
                    const SizedBox(width: 20),
                        ReservationForm(),



                  ]),
            ]),
      ),
    );
  }
}
