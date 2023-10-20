// import 'package:json_annotation/json_annotation.dart';
//
// part 'product_model.g.dart';
//
// @JsonSerializable()
// class ProductModel {
//   int? id;
//   String? title;
//   int? price;
//   String? description;
//   List<String>? images;
//   String? creationAt;
//   String? updatedAt;
//   CategoryModel? category;
//
//   ProductModel(
//       {this.id,
//       this.title,
//       this.price,
//       this.description,
//       this.images,
//       this.creationAt,
//       this.updatedAt,
//       this.category});
//
//   factory ProductModel.fromJson(Map<String, dynamic> json) =>
//       _$ProductModelFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ProductModelToJson(this);
// }
//
// @JsonSerializable()
// class CategoryModel {
//   int? id;
//   String? name;
//   String? image;
//   String? creationAt;
//   String? updatedAt;
//
//   CategoryModel(
//       {this.id, this.name, this.image, this.creationAt, this.updatedAt});
//
//   factory CategoryModel.fromJson(Map<String, dynamic> json) =>
//       _$CategoryModelFromJson(json);
//
//   Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
// }
