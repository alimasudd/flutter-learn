import 'dart:convert';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testing/animated_container.dart';
import 'package:flutter_testing/anonymous_method_test.dart';
import 'package:flutter_testing/container_test.dart';
import 'package:flutter_testing/draggable.dart';
import 'package:flutter_testing/flexible_widgets.dart';
import 'package:flutter_testing/image_widget.dart';
import 'package:flutter_testing/list_listview_test.dart';
import 'package:flutter_testing/multi_page.dart';
import 'package:flutter_testing/raw_column.dart';
import 'package:flutter_testing/spacer_widgets.dart';
import 'package:flutter_testing/stack_align.dart';
import 'package:flutter_testing/stateful_test.dart';
import 'package:flutter_testing/textstyle_test.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MultiPage());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Flutter"),
        ),
        body: Center(
            child: Container(
                color: Colors.red,
                width: 150,
                height: 150,
                child: Text(
                  "Hello World Hello World Hello World Hello World Hello World",
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))),
      ),
    );
  }
}
