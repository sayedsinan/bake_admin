import 'dart:io';
import 'dart:typed_data';
import 'package:bake_n_cake_admin_side/model/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProdcutController extends GetxController {
  final TextEditingController productname = TextEditingController();
  final TextEditingController prodductid = TextEditingController();
  final TextEditingController productprice = TextEditingController();
  final TextEditingController productdescription = TextEditingController();
  RxList<ProductModel> products = <ProductModel>[].obs;
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Uint8List? image;
  // Future<void> addproductToFireBase() async {
  //   if (productname.text.isEmpty ||
  //       prodductid.text.isEmpty ||
  //       productprice.text.isEmpty ||
  //       productdescription.text.isEmpty) {
  //     return;
  //   }

  //   ProductModel newProduct = ProductModel(
  //     name: productname.text,
  //     id: int.parse(prodductid.text),
  //     price: double.parse(productprice.text),
  //     description: productdescription.text,
  //     image: imageUrl,
  //   );
  //   prodductid.clear();
  //   productdescription.clear();
  //   productname.clear();
  //   productprice.clear();
  //   products.add(newProduct);
  // }

  Future<String?> uploadedImage(String path, XFile image) async {
    try {
      final ref = FirebaseStorage.instance.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      String url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      return "error";
    }
  }

  Future<String> uploadToStorage(String childName, Uint8List file) async {
    Reference ref = storage.ref().child(childName);
    UploadTask uploadTask = ref.putData(file);
    TaskSnapshot snapshot = await uploadTask;
    String downloadedUrl = await snapshot.ref.getDownloadURL();
    return downloadedUrl;
  }

  // Future<String> saveData({
  //   required String name,
  //   required String id,
  //   required String price,
  //   required String desc,
  //   required Uint8List file,
  // }) async {
  //   String resp = "Some Error Occured";
  //   try {
  //     if (name.isNotEmpty ||
  //         id.isNotEmpty ||
  //         price.isNotEmpty ||
  //         desc.isNotEmpty) {
  //       String imageUrl = await uploadToStorage('ProducImage', file);
  //       await firestore.collection('newproducts').add({
  //         'name': name,
  //         'id': id,
  //         'descirption': desc,
  //         'image': imageUrl,
  //       });
  //       resp = 'success';
  //     }
  //   } catch (e) {
  //     resp = e.toString();
  //   }
  //   return resp;
  // }

  void selectImage() async {
    XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      Uint8List pickedFileBytes = await pickedFile.readAsBytes();

      // Upload the image to Firebase Storage and get the URL
      String imageUrl = await uploadToStorage('ProducImage', pickedFileBytes);

      // Assign the obtained URL to the image property
      image = pickedFileBytes;

      // If you want to use the URL in other parts of your code, you can store it separately
      // For example, you can create a variable to store the URL in your controller
      // String imageUrl = await uploadToStorage('ProducImage', pickedFileBytes);
      // controller.setImageUrl(imageUrl);
    }
  }
}
