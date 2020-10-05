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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    icon: Icon(Icons.add_call),
                    prefixIcon: Icon(Icons.person),
//                    prefixText: "Name : ",
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                    labelText: "Nama Lengkap",
                    hintText: "Nama Lengkap Anda"),
                maxLength: 20,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
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
}
