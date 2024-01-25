import 'package:flutter/material.dart';


class AdddingSection extends StatelessWidget {
  const AdddingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
           Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Product name',
                hintText: 'Product name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Product ID',
                  hintText: 'Product ID',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  fillColor: Colors.white24),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Price per kg',
                hintText: 'Price per kg',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0)),
            ),
          ),
           SizedBox(
            height: 20,
          ),
           Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Image',
                  hintText: 'Image',
                  suffixIcon: Icon(Icons.add),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0)),
            ),
          ),
           SizedBox(
            height: 20,
          ),
         
          
        ],
      ),
    );
  }
}
