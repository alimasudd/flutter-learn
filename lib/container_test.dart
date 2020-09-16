import 'package:flutter/material.dart';

class CobaContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan container"),
        ),
        body: Container(
          color: Colors.red,
          margin: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.red])),
          ),
        ),
      ),
    );
  }
}
