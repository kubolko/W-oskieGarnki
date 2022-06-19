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
    Expanded(
    flex: 1,
    child:
    Material(
    type: MaterialType.transparency,
    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,//.horizontal
    child:  SizedBox(width:  MediaQuery.of(context).size.width / 2 ,child: HtmlWidget(post.content))
    ),
    ))],
    );
  }
}
