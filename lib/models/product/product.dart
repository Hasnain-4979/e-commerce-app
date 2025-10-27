import 'dart:convert';

class Product {
  String title;
  double price;
  String imgePath;

  Product({
    required this.title,
    required this.price,
    required this.imgePath
  });
  
  Product copyWith({
    String? title,
    double? price,
    String? imgePath,
  }) {
    return Product(
      title: title ?? this.title,
      price: price ?? this.price,
      imgePath: imgePath ?? this.imgePath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'price': price,
      'imgePath': imgePath,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['title'] as String,
      price: map['price'] as double,
      imgePath: map['imgePath'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Product(title: $title, price: $price, imgePath: $imgePath)';

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.price == price &&
      other.imgePath == imgePath;
  }

  @override
  int get hashCode => title.hashCode ^ price.hashCode ^ imgePath.hashCode;
}
