import 'package:bake_n_cake_admin_side/controller/product_controller.dart';
import 'package:bake_n_cake_admin_side/functions/image_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdddingSection extends StatelessWidget {
  AdddingSection({super.key});

  final ProdcutController productcontroller = Get.put(ProdcutController());

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProdcutController>();
    return Scaffold(
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                controller: productcontroller.productname,
                decoration: const InputDecoration(
                  labelText: 'Product name',
                  hintText: 'Product name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
              child: TextField(
                controller: productcontroller.prodductid,
                decoration: const InputDecoration(
                    labelText: 'Product ID',
                    hintText: 'Product ID',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    fillColor: Colors.white24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, bottom: 20, top: 10),
              child: TextField(
                controller: productcontroller.productprice,
                decoration: const InputDecoration(
                  labelText: 'Price per kg',
                  hintText: 'Price per kg',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: TextField(
                controller: productcontroller.productdescription,
                decoration: const InputDecoration(
                    labelText: 'Description',
                    hintText: 'Description',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             Padding(
              padding:const  EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: TextField(
                readOnly: true,
                onTap: controller.selectImage,
                decoration: const InputDecoration(
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
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
