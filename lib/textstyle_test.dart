import 'dart:ui';

import 'package:flutter/material.dart';

class TextStyleTest extends StatefulWidget {
  @override
  _TextStyleTestState createState() => _TextStyleTestState();
}

class _TextStyleTestState extends State<TextStyleTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Textstyle"),
        ),
        body: Center(
          child: Text(
            "Ini Adalah Text",
            style: TextStyle(
                fontFamily: "Lucida",
                fontSize: 35,
                decoration: TextDecoration.overline,
                decorationColor: Colors.blue,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.dashed),
          ),
        ),
      ),
    );
  }
}
