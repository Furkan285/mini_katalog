import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/product.dart';

class ProductRepository {
  /// Simulates fetching products from an API by reading local JSON asset
  /// Reference demo endpoints from training guide:
  /// - Banner: https://wantapi.com/assets/banner.png
  /// - Products: https://wantapi.com/products.php
  static Future<List<Product>> loadProducts() async {
    final String jsonString =
        await rootBundle.loadString('assets/data/products.json');
    final List<dynamic> decodedList = json.decode(jsonString) as List<dynamic>;
    return decodedList
        .map((item) => Product.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
