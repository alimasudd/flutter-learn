import 'package:flutter/material.dart';

class StatefulTest extends StatefulWidget {
  @override
  _StatefulTestState createState() => _StatefulTestState();
}

class _StatefulTestState extends State<StatefulTest> {
  int number = 0;

  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stateful Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString(), style: TextStyle(fontSize: 10 + number.toDouble()),),
              RaisedButton(
                child: Text("Tambah Bilangan"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: tekanTombol,
              ),
              RaisedButton(
                child: Text("Kurangi Bilangan"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: tekanTombolKurang,
              )
            ],
          ),
        ),
      ),
    );
  }

  void tekanTombolKurang() {
    setState(() {
      number = number - 1;
    });
  }
}
