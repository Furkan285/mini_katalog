class Product {
  final int id;
  final String name;
  final String tagline;
  final double price;
  final String category;
  final String image;
  final String description;
  final Map<String, String> specifications;

  const Product({
    required this.id,
    required this.name,
    required this.tagline,
    required this.price,
    required this.category,
    required this.image,
    required this.description,
    required this.specifications,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    final rawSpecs = json['specifications'] as Map<String, dynamic>? ?? {};
    final parsedSpecs = rawSpecs.map(
      (key, value) => MapEntry(key.toString(), value.toString()),
    );

    return Product(
      id: json['id'] as int,
      name: json['name'] as String,
      tagline: json['tagline'] as String? ?? '',
      price: (json['price'] as num).toDouble(),
      category: json['category'] as String? ?? 'General',
      image: json['image'] as String,
      description: json['description'] as String? ?? '',
      specifications: parsedSpecs,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'tagline': tagline,
      'price': price,
      'category': category,
      'image': image,
      'description': description,
      'specifications': specifications,
    };
  }
}
