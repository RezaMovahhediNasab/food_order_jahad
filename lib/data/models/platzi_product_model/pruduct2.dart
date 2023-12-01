import 'package:json_annotation/json_annotation.dart';

part 'pruduct2.g.dart';

@JsonSerializable()
class PlatziProductModel {
  int? id;
  String? title;
  int? price;
  String? description;
  List<String>? images;
  String? creationAt;
  String? updatedAt;

  PlatziProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.images,
    this.creationAt,
    this.updatedAt,
  });

  factory PlatziProductModel.fromJson(Map<String, dynamic> json) =>
      _$PlatziProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlatziProductModelToJson(this);

}
