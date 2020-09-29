import 'package:flutter/material.dart';
import 'package:flutter_testing/multi_page3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("LOGIN"),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) {
              return Page3();
            }));
          },
        ),
      ),
    );
  }
}
