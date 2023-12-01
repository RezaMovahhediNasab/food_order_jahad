import 'package:json_annotation/json_annotation.dart';

part 'product_cart_model.g.dart';

@JsonSerializable()
class ProductCart {
  int productId;
  int quantity;

  ProductCart({required this.productId, required this.quantity});

  factory ProductCart.fromJson(Map<String, dynamic> json) =>
      _$ProductCartFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCartToJson(this);

}
