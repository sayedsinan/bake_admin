class ProductModel {
  final String documentID;
  final String name;
  final int id;
  final double price;
  final String description;
  String image;

  ProductModel({
    required this.documentID,
    required this.name,
    required this.id,
    required this.price,
    required this.description,
    required this.image,
  });

  // Factory constructor to create a ProductModel without specifying the documentID
  factory ProductModel.create({
    required String name,
    required int id,
    required double price,
    required String description,
    required String image,
  }) {
    return ProductModel(
      documentID: '', // Leave documentID empty for Firestore to generate one
      name: name,
      id: id,
      price: price,
      description: description,
      image: image,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'documentID': documentID,
      'name': name,
      'id': id,
      'price': price,
      'description': description,
      'image': image,
    };
  }

factory ProductModel.fromJson(Map<String, dynamic> json) {
  return ProductModel(
    documentID: json['documentID'] ?? '',
    name: json['name'] ?? '',
    id: json['id'] is int ? json['id'] : int.tryParse(json['id'].toString()) ?? 0,
    price: (json['price'] is double) ? json['price'] : (json['price'] is int) ? json['price'].toDouble() : 0.0,
    description: json['description'] ?? '',
    image: json['image'] ?? '',
  );
}

}
