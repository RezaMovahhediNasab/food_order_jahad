import 'package:json_annotation/json_annotation.dart';

import '../models/cart/product_cart_model.dart';

part 'add_to_cart_rqm.g.dart';

@JsonSerializable()
class AddCartRQM {
  final int userId;
  final List<ProductCart> products;

  AddCartRQM({required this.userId, required this.products});

  factory AddCartRQM.fromJson(Map<String, dynamic> json) =>
      _$AddCartRQMFromJson(json);

  Map<String, dynamic> toJson() => _$AddCartRQMToJson(this);

}
