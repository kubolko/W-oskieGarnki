// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.title,
    required this.description,
    required this.content,
    required this.image,
    required this.author,
    required this.date,
  });

  String title;
  String description;
  String content;
  String image;
  String author;
  String date;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    title: json["title"],
    description: json["description"],
    content: json["content"],
    image: json["image"],
    author: json["author"],
    date: json["date"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
    "content": content,
    "image": image,
    "author": author,
    "date": date,
  };
}
