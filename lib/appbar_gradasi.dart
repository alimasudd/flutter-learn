import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarGradasi extends StatefulWidget {
  @override
  _AppBarGradasiState createState() => _AppBarGradasiState();
}

class _AppBarGradasiState extends State<AppBarGradasi> {
  @override

  String textMe = "Sentuh Aku";

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: Text(
            "AppBar Example",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff0096ff), Color(0xff6610f2)],
                    begin: FractionalOffset.topLeft,
                    end: Alignment.bottomRight),
                image: DecorationImage(
                    image: AssetImage("images/pattern.png"),
                    fit: BoxFit.none,
                    repeat: ImageRepeat.repeat)),
          ),
        ),
        body: Center(
          child: RaisedButton(
            child: Text(textMe),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: (){setState(() {
              textMe = "Yessss";
            });},
          ),
        ),
      ),
    );
  }
}
