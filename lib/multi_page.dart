import 'package:flutter/material.dart';
import 'package:flutter_testing/multi_page2.dart';

class MultiPage extends StatefulWidget {
  @override
  _MultiPageState createState() => _MultiPageState();
}

class _MultiPageState extends State<MultiPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page2(),
    );
  }
}
