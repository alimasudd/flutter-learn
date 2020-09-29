import 'package:flutter/material.dart';
import 'package:flutter_testing/multi_page4.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PAGE 3"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Go to second page"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Page4();
            }));
          },
        ),
      ),
    );
  }
}
