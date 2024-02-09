import 'package:bake_n_cake_admin_side/firebase/product_controller.dart';
import 'package:bake_n_cake_admin_side/model/products.dart';
// import 'package:bake_n_cake_admin_side/functions/image_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailEditing extends StatelessWidget {
   final ProductModel product;
  const  DetailEditing({super.key, required this.product});
  
  @override
  Widget build(BuildContext context) {
    final ProdcutController productcontroller = Get.find<ProdcutController>();
 
    return Scaffold(
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                controller: productcontroller.editingProductname,
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
                keyboardType: TextInputType.number,
                controller: productcontroller.editingProdductid,
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
                keyboardType: TextInputType.number,
                controller: productcontroller.editingProductprice,
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
                controller: productcontroller.editingProductdescription,
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
                onTap: productcontroller.selectImage,
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