// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pruduct2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatziProductModel _$PlatziProductModelFromJson(Map<String, dynamic> json) =>
    PlatziProductModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: json['price'] as int?,
      description: json['description'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      creationAt: json['creationAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$PlatziProductModelToJson(PlatziProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'images': instance.images,
      'creationAt': instance.creationAt,
      'updatedAt': instance.updatedAt,
    };
