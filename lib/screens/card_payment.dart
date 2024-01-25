import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    double cardHeight = 200.0;

    return Card(
      elevation: 4, // Adjust the elevation as needed
      child: Container(
        height: cardHeight,
        padding: const EdgeInsets.all(16.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Text 1", style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text("Text 2", style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text("Text 3", style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text("Text 4", style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text("Text 5", style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text("Text 6", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}