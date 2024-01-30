import 'dart:io';

import 'package:bake_n_cake_admin_side/controller/product_controller.dart';


import 'package:image_picker/image_picker.dart';

Future<void> pickImage() async {
  ProdcutController imagePickController = ProdcutController();
  final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (pickedFile != null) {
    imagePickController.image.value = File(pickedFile.path);
  }
}
