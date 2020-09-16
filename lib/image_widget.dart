import 'package:flutter/material.dart';

class ImageWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
        ),
        body: Center(
          child: Container(
            width: 700,
            height: 700,
            padding: EdgeInsets.all(3),
            child: Image(
              image: NetworkImage(
                  "https://miro.medium.com/max/700/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg"),
            ),
          ),
        ),
      ),
    );
  }
}
