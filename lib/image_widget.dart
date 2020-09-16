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
            color: Colors.blue,
            width: 700,
            height: 700,
            padding: EdgeInsets.all(3),
            child: Image(
              image: AssetImage(
                  "images/sketch.png"),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
