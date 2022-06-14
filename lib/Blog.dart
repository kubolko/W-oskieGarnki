import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:woski_garnek/Widgets/BlogCard.dart';
import 'package:woski_garnek/Widgets/PostView.dart';

import 'Models/Posts.dart';
import 'Widgets/MenuWidget.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: (Column(
            // mainAxisAlignment:
            //     MainAxisAlignment.start, //Center Row contents horizontally,
            // crossAxisAlignment:
            //     CrossAxisAlignment.center, //Center Row contents vertically,
            children: [
              MenuWidget(title: 'Blog', subTitle: 'Subtitle'),
              Text(
                "Witaj na naszym blogu, znajdziesz tutaj niesamowite, proste i smaczne przepisy kuchni włoskiej.",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Flexible(
                child: FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString('StaticData/BlogPosts.json'),
                  builder: (context, snapshot) {
                    // Decode the JSON
                    var newData = json.decode(snapshot.data.toString());
                    List<Post> posts = postFromJson(snapshot.data.toString());


                    return ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child:  BlogCard(
                            image: posts[index].image,
                            author: posts[index].author,
                            description: posts[index].description,
                            title: posts[index].title
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  PostView(post: posts[index])),
                            );
                          },
                        );
                      },
                      itemCount: newData == null ? 0 : newData.length,
                    );
                  },
                ),
              )
            ])));
  }
}
