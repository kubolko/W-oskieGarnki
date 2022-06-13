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

import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final String description;

  BlogCard(
      {Key? key,
      required this.image,
      required this.author,
      required this.description,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox(width: 100),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(image),
            ),
          ),
        ),
        const SizedBox(width: 50),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Text(title,
                  style: TextStyle(
                      fontFamily: 'Amertha',
                      fontSize: 50,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFFA10412))),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Text(description, maxLines: 2),
            ),
            SizedBox(height: 50),
          ],
        ),
        TextButton(
            child: Text("Read More".toUpperCase(),
                style: Theme.of(context).textTheme.labelLarge),
            style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        side: BorderSide(color: Colors.black)))),
            onPressed: () => null),
      ],
    ));
  }
}
