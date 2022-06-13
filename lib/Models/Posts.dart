// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

class Posts {
  Posts({
    required this.title,
    required this.description,
    required this.image,
    required this.author,
    required this.date,
  });

  String title;
  String description;
  String image;
  String author;
  String date;

  factory Posts.fromRawJson(String str) => Posts.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
        title: json["title"],
        description: json["description"],
        image: json["image"],
        author: json["author"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "image": image,
        "author": author,
        "date": date,
      };
}
