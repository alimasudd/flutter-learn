import 'package:flutter/material.dart';

class DraggableTest extends StatefulWidget {
  @override
  _DraggableTestState createState() => _DraggableTestState();
}

class _DraggableTestState extends State<DraggableTest> {
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Draggable"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.7),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.7),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                )
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value){isAccepted = true; color2 = value;},
              builder: (context, candidates, rejected){
                return (isAccepted) ? SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: color2,
                    shape: StadiumBorder(),
                  ),
                ):
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: Colors.black26,
                    shape: StadiumBorder(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
