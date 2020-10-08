import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextfieldExample extends StatefulWidget {
  @override
  _TextfieldExampleState createState() => _TextfieldExampleState();
}

class _TextfieldExampleState extends State<TextfieldExample> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Coba Textfield"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _TextField(20, Colors.blue, Icons.person, Icons.person_add,
                  "Nama Lengkap"),
              _TextField(200, Colors.deepOrangeAccent, Icons.location_on,
                  Icons.location_city, "Alamat"),
              Text(
                controller.text,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextField _TextField(int max, Color color, IconData iconData1,
      IconData iconData2, String text1) {
    return TextField(
      decoration: InputDecoration(
          fillColor: color,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          icon: Icon(iconData1),
          prefixIcon: Icon(iconData2),
//                    prefixText: "Name : ",
          prefixStyle: TextStyle(color: color, fontWeight: FontWeight.bold),
          labelText: text1,
          hintText: text1),
      maxLength: max,
      onChanged: (value) {
        setState(() {});
      },
      controller: controller,
    );
  }
}
