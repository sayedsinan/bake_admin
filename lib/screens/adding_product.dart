import 'package:bake_n_cake_admin_side/screens/product_details_adding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsAdding extends StatelessWidget {
  const ProductsAdding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB5DBCE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB5DBCE),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "                 Products",
          style: GoogleFonts.aBeeZee(color: Colors.black),
        ),
      ),
      body: ListView(children: [
        SizedBox(
          height: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "General Information",
                    style: GoogleFonts.aBeeZee(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    color: Colors.white,
                    height: 700,
                    width: 400,
                    child: const AdddingSection()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(
                              0, 255, 255, 255)), // Set your desired color here
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(Icons.cancel),
                        const SizedBox(width: 20),
                        Text(
                          "Cancel",
                          style: GoogleFonts.aBeeZee(color: Colors.black),
                        ),
                      ],
                    )),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(
                              0xFF26C1B5)), // Set your desired color here
                    ),
                    onPressed: () {},
                    child: Text(
                      "Add Product",
                      style: GoogleFonts.aBeeZee(color: Colors.black),
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
