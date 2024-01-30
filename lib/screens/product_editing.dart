import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/functions/image_function.dart';
import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:bake_n_cake_admin_side/screens/product_details_adding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductEdititng extends StatelessWidget {
  const ProductEdititng({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: maincolor,
      appBar: AppBar(
        backgroundColor: maincolor,
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
          style: heading(15),
        ),
      ),
      body: ListView(children: [
        SizedBox(
          height: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                    color: Colors.white,
                    height: sizeof.size.height*0.9,
                    width: sizeof.size.width*0.9,
                    child:  AdddingSection()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                         buttonColor), // Set your desired color here
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(Icons.cancel),
                        const SizedBox(width: 20),
                        Text(
                          "Cancel",
                          style: normalstyling(15),
                        ),
                      ],
                    )),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          buttonColor), // Set your desired color here
                    ),
                    onPressed: pickImage,
                    child: Row(
                      children: [
                        Icon(
                          Icons.rotate_right_rounded,
                          color:buttonColor,
                        ),
                        Text(
                          "Save",
                          style: normalstyling(15),
                        ),
                      ],
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
