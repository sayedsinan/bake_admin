import 'dart:typed_data';

class ProductModel {
  final String name;
  final int id;
  final double price;
  final String description;
  String? image;

  ProductModel({
    required this.name,
    required this.id,
    required this.price,
    required this.description,
    required this.image,
  });
}
