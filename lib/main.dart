import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
        body: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.ac_unit,
                  size: 60,
                  color: Color.fromARGB(255, 0, 255, 0),
                ),
                Text(
                  "Hi, ",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "This is ",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 50,
                  ),
                ),
                Text(
                  "Flutter.",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Adding some space
            RatingBar.builder(
              initialRating: 4, // Starting with 4 stars
              minRating: 1,
              itemSize: 40,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print("Rating: $rating");
              },
            ),
          ],
        ),
      ),
    );
  }
}
