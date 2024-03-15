import 'dart:typed_data';
import 'package:bake_n_cake_admin_side/firebase/product_services.dart';
import 'package:bake_n_cake_admin_side/model/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProdcutController extends GetxController {
  FireaBaseServices services = FireaBaseServices();
  final TextEditingController productname = TextEditingController();
  final TextEditingController prodductid = TextEditingController();
  final TextEditingController productprice = TextEditingController();
  final TextEditingController productdescription = TextEditingController();
  final TextEditingController editingProductname = TextEditingController();
  final TextEditingController editingProdductid = TextEditingController();
  final TextEditingController editingProductprice = TextEditingController();
  final TextEditingController editingProductdescription =
      TextEditingController();
  RxList<ProductModel> originalProductsList = <ProductModel>[].obs;
  RxList<ProductModel> peoplelsit = <ProductModel>[].obs;
  RxList<ProductModel> originalpeopleList = <ProductModel>[].obs;
  RxList<ProductModel> productslist = <ProductModel>[].obs;
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Uint8List? image;
  @override
  void onInit() {
    super.onInit();
    // Fetch products when the controller is initialized
    // print('hellp');
    Future.delayed(Duration(milliseconds: 500), () {
      getProducts();
    });
  }
  Future<void> getPeoples() async {
    try {
      CollectionReference products =
          FirebaseFirestore.instance.collection('Users');
      QuerySnapshot querySnapshot = await products.get();
      List<ProductModel> productList = querySnapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        return ProductModel.fromJson(data, ); // pass the document ID
      }).toList();

      peoplelsit.assignAll(productList);
      // print('Products: $productslist');
      originalpeopleList.assignAll(productslist);
    } catch (e) {
      // print('Error fetching products: $e');
    }
  }

  Future<String> uploadToStorage(String childName, Uint8List file) async {
    Reference ref = storage.ref().child(childName);
    UploadTask uploadTask = ref.putData(file);
    TaskSnapshot snapshot = await uploadTask;
    String downloadedUrl = await snapshot.ref.getDownloadURL();
    return downloadedUrl;
  }

  void selectImage() async {
    XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      Uint8List pickedFileBytes = await pickedFile.readAsBytes();
      await uploadToStorage('ProducImage', pickedFileBytes);
      image = pickedFileBytes;
    }
  }

  Future<void> addproductToFireBase() async {
    Uint8List? imageData = image;
    if (imageData != null) {
      String imageUrl = await uploadToStorage('ProducImage', imageData);
      ProductModel newProduct = ProductModel.create(
        name: productname.text,
        id: int.parse(prodductid.text),
        price: double.parse(productprice.text),
        description: productdescription.text,
        image: imageUrl,
      );
      services.addProduct(newProduct);
      productname.clear();
      prodductid.clear();
      productprice.clear();
      productdescription.clear();
      update();
    }
  }

 Future<void> updateData({
  required int productId,
  required String name,
  required double price,
  required String description,
  required int  id,
}) async {
  try {
    print('Updating product with ID: $productId');

    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('product')
        .where('id', isEqualTo: productId)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      String documentId = querySnapshot.docs.first.id;
      await FirebaseFirestore.instance.collection('product').doc(documentId).update({
        'name': name,
        'price': price,
        'description': description,
        'id': id,
      });

      print('Update successful');

      // Update the local state
      update();
    } else {
      print('Product with ID $productId not found.');
    }
  } catch (error) {
    print("Failed to update product: $error");
    throw error;
  }
}

  Future<void> getProducts() async {
    try {
      CollectionReference products =
          FirebaseFirestore.instance.collection('product');
      QuerySnapshot querySnapshot = await products.get();
      List<ProductModel> productList = querySnapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        return ProductModel.fromJson(data);
      }).toList();

      productslist.assignAll(productList);
      print('Products: $productslist');
      originalProductsList.assignAll(productslist);
    } catch (e) {
      print('Error fetching products: $e');
    }
    update();
  }

  // Future updateData() async {
  //   final userCollection = FirebaseFirestore.instance.collection("product");
  //   final docRef = userCollection.doc("70Rhmp8U2Q511o6Ll9GA");
  //   try {
  //     await docRef.update({
  //       "name": "sinan",
  //     });
  //   } catch (e) {
  //     print("the error:$e");
  //   }
  // }

  updateRecord(ProductModel product) async {}

  Future<void> deleteProduct(int productId) async {
    try {
      print('Deleting product with ID: $productId');

      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('product')
          .where('id', isEqualTo: productId)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        String documentId = querySnapshot.docs.first.id;
        await FirebaseFirestore.instance
            .collection('product')
            .doc(documentId)
            .delete();

        print('Delete successful');

        update();
      } else {
        print('Product with ID $productId not found.');
      }
    } catch (error) {
      print("Failed to delete product: $error");
      throw error;
    }
  }

  void filterProducts(String query) {
    if (query.isEmpty) {
      productslist.assignAll(originalProductsList);
    } else {
      List<ProductModel> filteredList = originalProductsList
          .where(
            (product) =>
                product.name.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
      productslist.assignAll(filteredList);
    }
  }

  void clearSearch() {
    productslist.assignAll(originalProductsList);
  }
}
