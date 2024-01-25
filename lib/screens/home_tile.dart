import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
        return ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),) ,
          leading: CircleAvatar(),
          title: Text("Red velvet Cake"),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SizedBox(height: 10,),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  height: 20,
                  width: 50,
                  color: Colors.grey.shade300,
                  child: const Center(
                    child: Text('1.0 kg'),
                  ),
                ),
              ),
              // SizedBox(width: 10,),
              const Text("₹ 1,200 ")
            ],
          ),
          focusColor: Colors.white,
          tileColor: Colors.white,
        );
      }),
    );
  }
}
