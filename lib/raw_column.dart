import 'package:flutter/material.dart';

class RawColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Row dan Column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Text("Text 4"),
            Row(
              children: [
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
                Text("Text 4"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
