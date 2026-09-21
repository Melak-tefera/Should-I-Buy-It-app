// lib/models/product.dart

class Product {
  final String? id;
  final String? name;
  final String? description;
  final double? price;
  final String? currency;
  final String? imageUrl;
  final String? market;

  Product({
    this.id,
    this.name,
    this.description,
    this.price,
    this.currency,
    this.imageUrl,
    this.market,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    // Adjust field names to match the real API response structure
    // Example mapping; update keys if your JSON uses different names.
    final offers = json['offers'] as List<dynamic>?;
    double? bestPrice;
    String? currency;
    String? market;

    if (offers != null && offers.isNotEmpty) {
      final firstOffer = offers[0] as Map<String, dynamic>;
      bestPrice = (firstOffer['price'] as num?)?.toDouble();
      currency = firstOffer['currency'] as String?;
      market = firstOffer['market'] as String?;
    }

    return Product(
      id: json['product_id'] as String?,
      name: json['product_name'] as String?,
      description: json['product_description'] as String?,
      price: bestPrice,
      currency: currency,
      imageUrl: json['product_image_url'] as String?,
      market: market,
    );
  }
}