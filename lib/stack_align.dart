import 'package:flutter/material.dart';

class StackAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stack Align"),
        ),
        body: Stack(
          children: [
            //background
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black12,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    )
                  ]),
                ),
              ],
            ),
            //listview
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah text",
                        style: TextStyle(fontSize: 205),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah text",
                        style: TextStyle(fontSize: 205),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah text",
                        style: TextStyle(fontSize: 205),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah text",
                        style: TextStyle(fontSize: 205),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah text",
                        style: TextStyle(fontSize: 205),
                      ),
                    ),
                  ],
                )
              ],
            ),
            //button
            Align(
              alignment: Alignment(0, 0.85),
                child: RaisedButton(
              child: Text("Klik Saya"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {},
            ))
          ],
        ),
      ),
    );
  }
}
