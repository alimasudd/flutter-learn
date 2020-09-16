import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerTest extends StatefulWidget {
  @override
  _AnimatedContainerTestState createState() => _AnimatedContainerTestState();
}

class _AnimatedContainerTestState extends State<AnimatedContainerTest> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Animated Container"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              color: Color.fromARGB(255, random.nextInt(256),
                  random.nextInt(256), random.nextInt(256)),
              duration: Duration(microseconds: 300),
              width: 100.0 + random.nextInt(201),
              height: 100.0 + random.nextInt(201),
            ),
          ),
        ),
      ),
    );
  }
}
