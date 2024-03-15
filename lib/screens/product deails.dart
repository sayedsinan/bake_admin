import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/firebase/product_controller.dart';
import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:bake_n_cake_admin_side/screens/product_editing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final productController = Get.find<ProdcutController>();
    var sizeof = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: maincolor,
      appBar: AppBar(
        title: Text(
          "           Product",
          style: heading(25),
        ),
        elevation: 0,
        backgroundColor: appbarColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: iconColor,
          ),
        ),
      ),
      body: GetBuilder<ProdcutController>(builder: (context) {
        return Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: sizeof.size.height * 0.7,
                          width: sizeof.size.width * 0.8,
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(
                                height: sizeof.size.height * 0.3,
                                width: sizeof.size.width * 1,
                                child: Image.network(
                                  productController.productslist[index].image
                                      .toString(),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Expanded(
                                      child: Text(
                                        "productname :${productController.productslist[index].name}",
                                        style: normalstyling(15),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Product ID :${productController.productslist[index].id}",
                                      style: normalstyling(15),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Price : ₹ ${productController.productslist[index].price.toString()}",
                                      style: normalstyling(15),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "KG : ${productController.productslist[index].price.toString()}",
                                      style: normalstyling(15),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Expanded(
                                      child: Text(
                                        "Description :${productController.productslist[index].description}",
                                        style: normalstyling(15),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                       Get.to(ProductEditing(
                                        index: index,
                                      ));
                                    },
                                    icon: const Icon(Icons.edit),
                                  ),
                                  IconButton(
                                    onPressed: () async{
                                    await productController.deleteProduct(index);
                                      Get.back();
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: delete,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
