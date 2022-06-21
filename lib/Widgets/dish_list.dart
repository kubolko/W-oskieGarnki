import 'package:flutter/material.dart';
import 'package:woski_garnek/Widgets/menu_card.dart';

import '../Models/dish.dart';

class DishList extends StatelessWidget {
  final List<Dish> dishes;

  const DishList({Key? key, required this.dishes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dishes == [] ? 0 : dishes.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: MenuCard(
              dish: dishes[index],
            ),
          );
        });
  }
}
