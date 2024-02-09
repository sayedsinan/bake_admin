import 'dart:typed_data';

import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/firebase/product_controller.dart';
import 'package:bake_n_cake_admin_side/model/products.dart';
import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:bake_n_cake_admin_side/screens/product_details_editing.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductEditing extends StatelessWidget {
  ProductEditing({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProdcutController>();
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
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Products",
          style: heading(15),
        ),
      ),
      body: ListView(
        children: [
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
                    height: sizeof.size.height * 0.9,
                    width: sizeof.size.width * 0.9,
                    child: DetailEditing(
                      product: controller.productslist[index],
                    ),
                  ),
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
                    onPressed: () {
                      Get.back();
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.cancel),
                        const SizedBox(width: 20),
                        Text(
                          "Cancel",
                          style: normalstyling(15),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(buttonColor),
                      ),
                      onPressed: () async {
                        ProductModel currentProduct =
                            controller.productslist[index];

                        ProductModel updatedProduct = ProductModel(
                          documentID: currentProduct.documentID,
                          name: controller.editingProductname.text,
                          id: int.parse(controller.editingProdductid.text),
                          price:
                              double.parse(controller.editingProductprice.text),
                          description:
                              controller.editingProductdescription.text,
                          image: currentProduct.image,
                        );

                        // Uncomment the following code once the documentID is available
                        Uint8List? imageData = controller.image;
                        if (imageData != null) {
                          String imageUrl = await controller.uploadToStorage(
                            'ProducImage',
                            imageData,
                          );
                          updatedProduct.image = imageUrl;
                        }

                        await controller.updateData(
                          productId:
                              int.parse(controller.editingProdductid.text),
                          name: controller.editingProductname.text,
                          price:
                              double.parse(controller.editingProductprice.text),
                          description:
                              controller.editingProductdescription.text,
                          id: int.parse(controller.editingProdductid.text),
                        );
                        // controller.update();
                        ();

                        // Navigate back
                        Get.back();
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.rotate_right_rounded,
                            color: buttonColor,
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
          ),
        ],
      ),
    );
  }
}
