import 'package:bake_n_cake_admin_side/screens/payment_details.dart';
import 'package:bake_n_cake_admin_side/screens/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB5DBCE),
      drawer: NavDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                // Open the drawer using the new context from Builder
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFB5DBCE),
        title: Text(
          "         Payment",
          style: GoogleFonts.aBeeZee(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(50),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter search term',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              height: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: GestureDetector(
                  onTap: () {
                    Get.to(PaymentDetails());
                  },
                  child:  Card(
                    shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(20.0),
  ),
                    shadowColor: Colors.grey,
                    color: Colors.white,
                    elevation: 4, // Adjust the elevation as needed
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Customers name : ",
                              style: TextStyle(fontSize: 16)),
                          SizedBox(height: 8),
                          Text("Order Item : ", style: TextStyle(fontSize: 16)),
                          SizedBox(height: 8),
                          Text("Order ID : ", style: TextStyle(fontSize: 16)),
                          SizedBox(height: 8),
                          Text("Amount : ", style: TextStyle(fontSize: 16)),
                          SizedBox(height: 8),
                          Text("Date : ", style: TextStyle(fontSize: 16)),
                          SizedBox(height: 8),
                          Text("Status : ", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
