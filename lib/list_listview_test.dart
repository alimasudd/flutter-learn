import 'package:flutter/material.dart';

class ListviewTest extends StatefulWidget {
  @override
  _ListviewTestState createState() => _ListviewTestState();
}

class _ListviewTestState extends State<ListviewTest> {
  List<Widget> widgets = [];
  int counter = 1;

//  _ListviewTestState(){
//    for(int i = 0; i < 50; i++)
//      widgets.add(Text("Text ke- "+i.toString(), style: TextStyle(fontSize: 35),));
//  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan List & Listview"),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  child: Text("Tambah Data"),
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  onPressed: () {setState(() {
                    widgets.add(Text("Data ke - "+ counter.toString(), style: TextStyle(fontSize: 35),));
                    counter++;
                  });},
                ),
                RaisedButton(
                  child: Text("Hapus Data"),
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  onPressed: () {setState(() {
                    widgets.removeLast();
                    counter--;
                  });},
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
