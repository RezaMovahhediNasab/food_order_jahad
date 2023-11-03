import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  String? id;
  String? name;
  String? categories;
  bool? isMaster;
  String? masterImage;
  String? brandName;
  int? inStock;
  bool? isActive;
  double? masterPrice;
  String? locale;

  String? country;

  String? code;

  String? jsonExt;

  ProductModel({
    required this.id,
    required this.name,
    required this.categories,
    required this.isMaster,
    required this.masterImage,
    required this.brandName,
    required this.inStock,
    required this.isActive,
    required this.masterPrice,
    required this.locale,
    required this.country,
    required this.code,
    required this.jsonExt,
  });



  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
