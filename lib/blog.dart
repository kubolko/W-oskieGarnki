

import 'package:flutter/material.dart';
import 'package:woski_garnek/Widgets/blog_card.dart';
import 'package:woski_garnek/Widgets/post_view.dart';

import 'Models/posts.dart';
import 'Widgets/menu_widget.dart';

class Blog extends StatefulWidget {
  static const id = 'Blog';

  const Blog({Key? key}) : super(key: key);

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
              MenuWidget(title: 'Blog', subTitle: 'Poznaj nas od kuchni!'),
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
                    List<Post> posts = postFromJson(snapshot.data.toString());


                    return ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        if (!snapshot.hasData) return const LinearProgressIndicator();
                        return InkWell(
                          child:  BlogCard(
                           post: posts[index],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  PostView(post: posts[index])),
                            );
                          },
                        );
                      },
                      itemCount: posts == [] ? 0 : posts.length,
                    );
                  },
                ),
              )
            ])));
  }
}
