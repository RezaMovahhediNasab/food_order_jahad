import 'package:food_order_jahad/data/models/cart/product_cart_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart.g.dart';

@JsonSerializable()
class Cart {
  int? id;
  int? userId;
  String? date;
  List<ProductCart>? products;
  int? iV;

  Cart({this.id, this.userId, this.date, this.products, this.iV});


  factory Cart.fromJson(Map<String, dynamic> json) =>
      _$CartFromJson(json);

  Map<String, dynamic> toJson() => _$CartToJson(this);

}
