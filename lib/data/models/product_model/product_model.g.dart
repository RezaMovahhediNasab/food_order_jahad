// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      categories: json['categories'] as String?,
      isMaster: json['isMaster'] as bool?,
      masterImage: json['masterImage'] as String?,
      brandName: json['brandName'] as String?,
      inStock: json['inStock'] as int?,
      isActive: json['isActive'] as bool?,
      masterPrice: json['masterPrice'] as int?,
      locale: json['locale'] as String?,
      country: json['country'] as String?,
      code: json['code'] as String?,
      jsonExt: json['jsonExt'] as String?,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categories': instance.categories,
      'isMaster': instance.isMaster,
      'masterImage': instance.masterImage,
      'brandName': instance.brandName,
      'inStock': instance.inStock,
      'isActive': instance.isActive,
      'masterPrice': instance.masterPrice,
      'locale': instance.locale,
      'country': instance.country,
      'code': instance.code,
      'jsonExt': instance.jsonExt,
    };
