import 'package:flutter/material.dart';

class MyTileList extends StatelessWidget {
  final List<String> itemNames = ["Red Velvet Cake", "Chocolate Cake", "Vanilla Cake"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
           padding: const EdgeInsets.all(15),
          child: ListTile(
            leading: CircleAvatar(),
            tileColor: Colors.white,
            title: Text(itemNames[index]),
          ),
        );
      },
    );
  }
}