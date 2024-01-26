import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:bake_n_cake_admin_side/screens/payment_details.dart';
import 'package:bake_n_cake_admin_side/screens/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFB5DBCE),
      drawer: NavDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
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
          const Padding(
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const PaymentDetails());
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),

                  shadowColor: Colors.grey,
                  color: Colors.white,
                  elevation: 4, // Adjust the elevation as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: sizeof.size.height * 0.3,
                            width: sizeof.size.width * 1,
                            child: Image.asset(
                              'Assets/cake1.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Customers name : ", style: normalstyling(15)),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Order Item : ",
                          style: normalstyling(15),
                        ),
                      ),
                      const SizedBox(height: 8),
                     
                     
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Amount : ",
                          style: normalstyling(15),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Date : ",
                          style: normalstyling(15),
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
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
