import 'dart:typed_data';

import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/controller/product_controller.dart';
import 'package:bake_n_cake_admin_side/firebase/product_services.dart';
import 'package:bake_n_cake_admin_side/model/products.dart';
import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:bake_n_cake_admin_side/screens/product_details_adding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsAdding extends StatelessWidget {
  const ProductsAdding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProdcutController());
    FireaBaseServices services = FireaBaseServices();
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
          style: heading(20),
        ),
      ),
      body: ListView(children: [
        const SizedBox(
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
                  Text("General Information", style: heading(15)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                    height: sizeof.size.height * 0.9,
                    width: sizeof.size.width * 0.9,
                    child: AdddingSection()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(buttonColor),
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
                      backgroundColor:
                          MaterialStateProperty.all<Color>(buttonColor),
                    ),
                    onPressed: () async {
                     
                      Uint8List? imageData = controller.image;
                      if (imageData != null) {
                        String imageUrl = await controller.uploadToStorage(
                            'ProducImage', imageData);
                        ProductModel newProduct = ProductModel(
                          name: controller.productname.text,
                          id: int.parse(controller.prodductid.text),
                          price: double.parse(controller.productprice.text),
                          description: controller.productdescription.text,
                          image: imageUrl,
                        );

                        // Add the new product to Firebase Firestore
                        services.addProduct(newProduct);

                        // Clear text fields after adding the product
                        controller.productname.clear();
                        controller.prodductid.clear();
                        controller.productprice.clear();
                        controller.productdescription.clear();
                      }
                    },
                    child: Text(
                      "Add Product",
                      style: normalstyling(15),
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
