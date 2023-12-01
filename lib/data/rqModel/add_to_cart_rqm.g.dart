// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_rqm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCartRQM _$AddCartRQMFromJson(Map<String, dynamic> json) => AddCartRQM(
      userId: json['userId'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductCart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddCartRQMToJson(AddCartRQM instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'products': instance.products,
    };
