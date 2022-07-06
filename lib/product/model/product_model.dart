class Product {
  final String? name;
  final String? photos;
  final String? category;
  final double? price;
  final double? discount;
  final double? calculate;

  Product(
    this.photos,
    this.category,
    this.price,
    this.discount,
    this.calculate, {
    this.name,
  });
}
