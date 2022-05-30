// To parse this JSON data, do
//
//     final dish = dishFromJson(jsonString);

import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';

// Map<String, Dish> dishFromJson(String str) => Map.from(json.decode(str))
//     .map((k, v) => MapEntry<String, Dish>(k, Dish.fromJson(v)));
//
// String dishToJson(Map<String, Dish> data) => json.encode(
//     Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));
//
// class Dish {
//   Dish({
//     required this.comments,
//     required this.description,
//     required this.dish,
//     required this.images,
//     required this.ingredients,
//     required this.isRecommended,
//     required this.weight,
//   });
//
//   List<String> comments;
//   String description;
//   String dish;
//   List<String> images;
//   List<String> ingredients;
//   bool isRecommended;
//   int weight;
//
//   factory Dish.fromJson(Map<String, dynamic> json) => Dish(
//         comments: List<String>.from(json["comments"].map((x) => x)),
//         description: json["description"],
//         dish: json["dish"],
//         images: List<String>.from(json["images"].map((x) => x)),
//         ingredients: List<String>.from(json["ingredients"].map((x) => x)),
//         isRecommended: json["isRecommended"],
//         weight: json["weight"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "comments": List<dynamic>.from(comments.map((x) => x)),
//         "description": description,
//         "dish": dish,
//         "images": List<dynamic>.from(images.map((x) => x)),
//         "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
//         "isRecommended": isRecommended,
//         "weight": weight,
//       };
// }

class Dish{

  List<String> comments;
  String description;
  String dish;
  List<String> images;
  List<String> ingredients;
  bool isRecommended;
  int weight;
  DocumentReference reference;

  Dish(
      this.dish,
      {
        this.comments,
        this.description,
        this.images,
        this.ingredients,
        this.isRecommended,
        this.weight,
        this.reference
  });

  factory Dish.fromSnapshot(DocumentSnapshot snapshot) {
    Dish newDish = Dish.fromJson(snapshot.data);
    Dish.reference = snapshot.reference;
    return newDish;
  }
    factory Dish.fromJson(Map<String, dynamic> json) => _DishFromJson(json);

    Map<String, dynamic> toJson() => _DishToJson(this);

    @override
    String toString() => "Dish<$dish>";

    Dish _DishFromJson(Map<String, dynamic> json) {
    return Dish(
        json['description'] as String,
        json['comments'] as  List<String>,
        json['dish'] as String,
        json['images'] as   List<String>,
        json['ingredients'] as   List<String>,
        json['isRecommended'] as bool,
        json['weight'] as double,
    );
  }

  Map<String, dynamic> _DishToJson(Dish instance) => <String, dynamic> {
    'comments': instance.comments,
    'description': instance.description,
    'dish': instance.dish,
    'images': instance.images,
    'ingredients': instance.ingredients,
    'isRecommended': instance.isRecommended,
    'weight': instance.weight,
  };

}
