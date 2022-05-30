import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Models/Dish.dart';
import 'ViewModels/ViewModel.dart';

class Polecane extends StatefulWidget {
  const Polecane({Key? key}) : super(key: key);

  @override
  _PolecaneState createState() => _PolecaneState();
}

class _PolecaneState extends State<Polecane> {
  List dataList = [Dish];

  Future<List<Dish>?> getData() async {
    List<Dish>? menu;
    String link =
        "https://firestore.googleapis.com/v1/projects/wloskiegarnki/databases/(default)/documents/menu";
    var res = await http
        .get(Uri.parse(link), headers: {"Accept": "application/json"});
    print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["documents"] as List;
      print(rest);
      menu =
          rest.map<Dish>((json) => Dish.fromJson(json)).cast<Dish>().toList();
    }
    print("List Size: ${menu?.length}");
    return menu;
  }

  Widget listViewWidget(List<Dish> dish) {
    return Container(
      child: ListView.builder(
          itemCount: 20,
          padding: const EdgeInsets.all(2.0),
          itemBuilder: (context, position) {
            return Card(
              child: ListTile(
                title: Text(
                  '${dish[position].dish}',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: dish[position].images[0] == null
                        ? Image(
                            image: AssetImage('images/no_image_available.png'),
                          )
                        : Image.network('${dish[position].images[0]}'),
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Demo"),
        actions: [
          IconButton(
              onPressed: () {
                ViewModel().addDish();
                setState(() {});
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text(
              "Something went wrong",
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            dataList = snapshot.data as List;

            dataList = dishFromJson(jsonEncode(snapshot.data)) as List;
            print(dataList);
            return buildItems(dataList);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildItems(dataList) => ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: dataList.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            title: Row(children: [
          Column(
            children: [
              Text(dataList[index]["dish"] ?? "name not found",
                  style: Theme.of(context).textTheme.titleMedium),
              Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Expanded(
                      child: Text(
                          dataList[index]["description"] ?? "name not found",
                          style: Theme.of(context).textTheme.bodySmall))),
            ],
          ),
          Image.network(
            'https://img.freepik.com/darmowe-zdjecie/czas-pizzy-smaczna-domowa-tradycyjna-pizza-wloski-przepis_144627-42528.jpg?t=st=1653823723~exp=1653824323~hmac=f47ca3eeebb9a8ade0f089d2f852cb4241211e6bd0d50505ef75a94f4fd41f5b&w=2000',
            width: MediaQuery.of(context).size.width / 4,

            // CarouselSlider(
            //   options: CarouselOptions(),
            //   items: dataList[index]["images"]
            //       .map<Widget>((item) => Container(
            //             child: Image.network(item, fit: BoxFit.cover, width: 10),
            //           ))
            //       .toList(),
            // ),
          )
        ]));
      });
}
