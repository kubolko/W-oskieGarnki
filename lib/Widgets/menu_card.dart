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

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:woski_garnek/Models/dish.dart';

class MenuCard extends StatelessWidget {
  final Dish dish;

  const MenuCard({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(width: 100),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                dish.dish,
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 1,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(dish.description,
                    style: Theme.of(context).textTheme.bodySmall),
              ),
              const SizedBox(height: 50),
              _buildIngredients(context, dish),
              const SizedBox(height: 50),
            ],
          ),
          const SizedBox(width: 50),
          SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: CarouselSlider(
                options: CarouselOptions(),
                items: dish.images
                    .map((item) => Center(
                        child: Image.network(item,
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width / 3)))
                    .toList(),
              )),
        ],
      ),
    );
  }

  Widget _buildIngredients(BuildContext context, Dish dish) {
    return Row(
      children: dish.ingredients.map((dish) {
        return Text('$dish, ', style: Theme.of(context).textTheme.bodySmall);
      }).toList(),
    );
  }
}
