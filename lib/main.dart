import 'package:flutter/material.dart';

void main() {
  runApp(const LabClass05());
}

class LabClass05 extends StatelessWidget {
  const LabClass05({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic Flutter UI - 02",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Basic Flutter UI - 02"),
          backgroundColor: Colors.blue[400],
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the text horizontally
          children: [
            Text(
              "This is ",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue, // Blue color for the first part
              ),
            ),
            Text(
              "Flutter",
              style: TextStyle(
                fontSize: 30,
                color: Colors.green, // Green color for the second part
              ),
            ),
          ],
        ),
      ),
    );
  }
}
