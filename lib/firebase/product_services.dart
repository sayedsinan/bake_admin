
import 'package:bake_n_cake_admin_side/model/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';

class FireaBaseServices extends GetxController {
  Future<void> addProduct(ProductModel product) async {
 final usercollection = FirebaseFirestore.instance.collection('product');
 final uid =usercollection.doc().id;
 final docRef=usercollection.doc(uid);
    await FirebaseFirestore.instance.collection('product').add({
      'document':uid,
      'name': product.name,
      'id': product.id,
      'price': product.price,
      'description': product.description,
      'image': product.image
    });
  
  }

// this function is for fetching for data from  the firebase real time database
//   Future<List<Map<String, dynamic>>> getProducts() async {
//     //instance
//     CollectionReference products =
//         FirebaseFirestore.instance.collection('products');
// //document snapshot
//     QuerySnapshot querySnapshot = await products.get();
//     //convertion the doc to list of map
//     List<Map<String, dynamic>> productList = querySnapshot.docs
//         .map((doc) => doc.data() as Map<String, dynamic>)
//         .toList();
//     return productList;
//   }

}
