import 'package:flutter/material.dart';
import 'package:woski_garnek/Widgets/MenuWidget.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../Models/Posts.dart';

class PostView extends StatelessWidget {

  final Post post;

  const PostView(
      {Key? key,
        required this.post})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MenuWidget(title: post.title, subTitle: ""),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 450,
          child: HtmlWidget(post.content),
        ),
      ],
    );
  }
}
