import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: buildCard(Colors.green, Icons.account_box, "Account")),
              buildCard(Colors.blue, Icons.add_box, "Add Account"),
              buildCard(Colors.deepPurpleAccent, Icons.check_box_outline_blank,
                  "Blank Icon")
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(Color colorr, IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              child: Icon(
                iconData,
                color: colorr,
                size: 40,
              )),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )
        ],
      ),
    );
  }
}
