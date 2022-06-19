// Copyright (c) 2021 Razeware LLC

// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use,
// copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom
// the Software is furnished to do so, subject to the following
// conditions:

// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.

// Notwithstanding the foregoing, you may not use, copy, modify,
// merge, publish, distribute, sublicense, create a derivative work,
// and/or sell copies of the Software in any work that is designed,
// intended, or marketed for pedagogical or instructional purposes
// related to programming, coding, application development, or
// information technology. Permission for such use, copying,
// modification, merger, publication, distribution, sublicensing,
// creation of derivative works, or sale is expressly withheld.

// This project and source code may use libraries or frameworks
// that are released under various Open-Source licenses. Use of
// those libraries and frameworks are governed by their own
// individual licenses.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:woski_garnek/Models/Dish.dart';
import 'package:woski_garnek/ViewModels/DataRepository.dart';
import 'package:woski_garnek/Widgets/Footer.dart';
import 'package:woski_garnek/Widgets/MenuCard.dart';

import 'Widgets/MenuWidget.dart';

class Menu extends StatefulWidget {
  static const id = 'Menu';
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final DataRepository repository = DataRepository();

  // Future<List<Dish>> allDishes = DataRepository().getAllData();
  // Future<List<Dish>> filteredDishes = [] as Future<List<Dish>>;
  String activeFilter = 'All';

  @override
  Widget build(BuildContext context) {
    return _buildMenu(context);
  }

  @override
  Widget _buildMenu(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          MenuWidget(
            title: 'Menu',
            subTitle: 'Co tydzień wprowadzamy inne menu, więc jeśli Ci się coś spodoba, pośpiesz się!',
          ),
          const Text("Wybierz typ dania"),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(25),
                child: TextButton(
                  child: Text(
                    'Dania Główne',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    setState(() {
                      activeFilter = 'Dania Główne';
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: TextButton(
                  child: const Text(
                    'Przystawki',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    setState(() {
                      activeFilter = 'Dessert';
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: TextButton(
                  child: Text(
                    'Napoje',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    setState(() {
                      activeFilter = 'Drinks';
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: TextButton(
                  child: const Text(
                    'Pizza',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    setState(() {
                      activeFilter = 'Pizza';
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: TextButton(
                  child: const Text(
                    'Sniadania',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    setState(() {
                      activeFilter = 'Breakfast';
                    });
                  },
                ),
              ),
              // Container(
              //   margin: EdgeInsets.all(25),
              //   child: TextButton(
              //     child: const Text(
              //       'Przystawki',
              //       style: TextStyle(fontSize: 20.0),
              //     ),
              //     onPressed: () {
              //       setState(() {
              //         activeFilter = 'Dessert';
              //       });
              //     },
              //   ),
              // ),
            ],
          ),
          Flexible(child: myStreamBuilder(activeFilter))
        ],
      ),
    );
  }

  Widget myStreamBuilder(String activeFilter) {
    return StreamBuilder<QuerySnapshot>(
        stream: repository.getFilteredStream(activeFilter),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const LinearProgressIndicator();

          return _buildList(context, snapshot.data?.docs ?? []);
        });
  }

  // void _addPet() {
  //   showDialog<Widget>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return const AddPetDialog();
  //     },
  //   );
  // }

  Widget _buildList(BuildContext context, List<DocumentSnapshot>? snapshot) {
    final widgets =
        snapshot!.map((data) => _buildListItem(context, data)).toList();
    widgets.add(Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Footer(),
    ));
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: widgets,
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot snapshot) {
    final dish = Dish.fromSnapshot(snapshot);

    return MenuCard(dish: dish);
  }
}
