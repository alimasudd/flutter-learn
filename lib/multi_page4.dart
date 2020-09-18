import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Back"),
          onPressed: () {Navigator.pop(context);},
        ),
      ),
    );
  }
}