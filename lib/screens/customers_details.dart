import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomersDetails extends StatelessWidget {
  const CustomersDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFB5DBCE),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child:const  Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Text(
            "     Customer's Details",
            style: GoogleFonts.aBeeZee(color: Colors.black),
          ),
        ),
        backgroundColor: const Color(0xFFB5DBCE),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                 const    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text("Customer name : "),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text("Phone number : "),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text("E- mail : "),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text("Payment: "),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text("Block"),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
