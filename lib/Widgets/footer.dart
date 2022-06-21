import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff383127),
        width: MediaQuery.of(context).size.width,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            verticalDirection: VerticalDirection.down,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width / 18),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    const Text("Zamówienia",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Malgun',
                            color: Colors.white)),
                    Container(
                      width: MediaQuery.of(context).size.width / 10,
                      height: 1.0,
                      color: Colors.white,
                    ),
                    const Text("Dostawy",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Malgun',
                            fontWeight: FontWeight.normal,
                            color: Colors.white)),
                    const Text("Czas dostawy",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Malgun',
                            fontWeight: FontWeight.normal,
                            color: Colors.white)),
                    const Text("Regulamin",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Malgun',
                            fontWeight: FontWeight.normal,
                            color: Colors.white)),
                  ]),
              Container(
                width: 1,
                height: MediaQuery.of(context).size.height / 10,
                color: Colors.white,
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    const Text("Eventy",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Malgun',
                            color: Colors.white)),
                    Container(
                      width: MediaQuery.of(context).size.width / 10,
                      height: 1.0,
                      color: Colors.white,
                    ),
                    const Text("Catering",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Malgun',
                            fontWeight: FontWeight.normal,
                            color: Colors.white)),
                    const Text("Rezerwacja lokalu",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Malgun',
                            fontWeight: FontWeight.normal,
                            color: Colors.white)),
                    const Text("Regulamin",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Malgun',
                            fontWeight: FontWeight.normal,
                            color: Colors.white)),
                  ]),
              Container(
                width: 1,
                height: MediaQuery.of(context).size.height / 10,
                color: Colors.white,
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    const Text("Współpraca",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Malgun',
                            color: Colors.white)),
                    Container(
                      width: MediaQuery.of(context).size.width / 10,
                      height: 1.0,
                      color: Colors.white,
                    ),
                    const Text("Zostań naszym kucharzem",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Malgun',
                            color: Colors.white)),
                    const Text("Zostań dostawcą",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Malgun',
                            color: Colors.white)),
                    const Text("Zostań kelnerem",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Malgun',
                            color: Colors.white)),
                    const Text("Regulamin",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Malgun',
                            color: Colors.white)),
                  ]),
              SizedBox(width: MediaQuery.of(context).size.width / 18),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    const Text("Włoskie Garnki",
                        style: TextStyle(
                            fontFamily: "Amertha",
                            fontWeight: FontWeight.normal,
                            color: Color(0xffF8B960))),
                    const Text("+ 48 997 213 700",
                        style: TextStyle(
                            fontFamily: "Malgun",
                            fontWeight: FontWeight.bold,
                            color: Color(0xfffbfaf1))),
                    const Text("wloskiegarnki@gmail.com",
                        style: TextStyle(
                            fontFamily: "Malgun",
                            fontWeight: FontWeight.normal,
                            color: Color(0xfffbfaf1))),
                    const Text("ul niewiadoma 15/8 80-020",
                        style: TextStyle(
                            fontFamily: "Malgun",
                            fontWeight: FontWeight.normal,
                            color: Color(0xfffbfaf1))),
                    const Text("Znajdziesz nas na:"),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        verticalDirection: VerticalDirection.down,
                        children: [
                          const Text("IG"),
                          const Text("FB"),
                          const Text("YT"),
                          const Text("TikTok"),
                        ])
                  ]),
              SizedBox(width: MediaQuery.of(context).size.width / 18),
            ]));
  }
}
