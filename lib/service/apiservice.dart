// lib/services/prices_api.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:should_i_buy_it/service/model.dart';


class PricesApiService {
  final String apiKey = 'pricesapi_OalgQVs9eeL1lfr1ITIzmFvZqMyOA4lx';

  Future<List<Product>> searchProducts({
    required String query,
    required String market,
  }) async {
    final uri = Uri.parse(
      'https://api.pricesapi.io/api/v1/products/search',
    ).replace(queryParameters: {
      'q': query,
      'market': market,
    });

    final response = await http.get(
      uri,
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Accept': 'application/json',
      },
    ).timeout(const Duration(seconds: 90));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final data = json['data'] as Map<String, dynamic>?;
      final productsJson = data?['products'] as List<dynamic>? ?? [];

      return productsJson
          .whereType<Map<String, dynamic>>()
          .map((e) => Product.fromJson(e))
          .toList();
    } else {
      throw Exception('API error: ${response.statusCode}\n${response.body}');
    }
  }
}