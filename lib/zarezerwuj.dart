import 'package:flutter/material.dart';
import 'package:woski_garnek/Widgets/reservation_form.dart';
import 'Widgets/calendar.dart';
import 'Widgets/menu_widget.dart';

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
              SizedBox(
                height: MediaQuery.of(context).size.height*0.1,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 4,
                            height: MediaQuery.of(context).size.width / 1.5,
                            child: const Calendar()),
                      ],
                    ),
                    const SizedBox(width: 20),
                        const ReservationForm(),



                  ]),
            ]),
      ),
    );
  }
}
