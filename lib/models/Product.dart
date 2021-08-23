// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    this.price,
    this.image,
    this.id,
    this.description,
    this.title,
  });

  String price;
  UrlImage image;
  int id;
  String description;
  String title;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        price: json["price"],
        image: imageValues.map[json["image"]],
        id: json["id"],
        description: json["description"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "price": price,
        "image": imageValues.reverse[image],
        "id": id,
        "description": description,
        "title": title,
      };
}

enum UrlImage { IMAGES_TEST_SITES_E_COMMERCE_ITEMS_CART2_PNG }

final imageValues = EnumValues({
  "\"/images/test-sites/e-commerce/items/cart2.png\"":
      UrlImage.IMAGES_TEST_SITES_E_COMMERCE_ITEMS_CART2_PNG
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
