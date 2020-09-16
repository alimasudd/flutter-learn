import 'package:flutter/material.dart';

class AnonymousTest extends StatefulWidget {
  @override
  _AnonymousTestState createState() => _AnonymousTestState();
}

class _AnonymousTestState extends State<AnonymousTest> {
  String message = "Ini adalah text";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              RaisedButton(
                child: Text("Tekan Saya"),
                color: Colors.red,
                textColor: Colors.white,
                onPressed: (){setState(() {
                  message = "Tombol sudah ditekan";
                });},
              )
            ],
          ),
        ),
      ),
    );
  }
}
