import 'dart:io';
import 'package:bake_n_cake_admin_side/model/products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProdcutController extends GetxController {
  Rx<File?> image = Rx<File?>(null);
  final TextEditingController productname = TextEditingController();
  final TextEditingController prodductid = TextEditingController();
  final TextEditingController productprice = TextEditingController();
  final TextEditingController productdescription = TextEditingController();
  RxList<ProductModel> products = <ProductModel>[].obs;
  Future<void> addproductToFireBase() async {
    if (productname.text.isEmpty ||
        prodductid.text.isEmpty ||
        productprice.text.isEmpty ||
        productdescription.text.isEmpty) {
      return;
    }
    ProductModel newProduct = ProductModel(
      name: productname.text,
      id: int.parse(prodductid.text),
      price: double.parse(productprice.text),
      description: productdescription.text,
      image: image.value,
    );
    prodductid.clear();
    productdescription.clear();
    productname.clear();
    productprice.clear();
    products.add(newProduct);
  }
}
