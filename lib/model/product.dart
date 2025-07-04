class Product {
  final int id;
  final String title;
  final String image;
  final double price;

  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      image: (json['images'] as List).first ?? '',
      price: double.tryParse(json['price'].toString()) ?? 0.0,
    );
  }
}
