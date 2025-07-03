import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:linked_gate/model/product.dart';

class ApiService {
  final String _baseUrl = 'https://api.escuelajs.co/api/v1/products';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
