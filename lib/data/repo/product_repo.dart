// import 'package:class_flutter/data/clients/product_api_client/product_api_client.dart';
// import 'package:class_flutter/data/data_source/product_data_source.dart';
// import 'package:class_flutter/data/models/product_model/product_model.dart';
// import 'package:dio/dio.dart';
// import 'package:logger/logger.dart';
//
// class ProductRepository extends ProductDataSource {
//   Dio _dio = Dio();
//   late ProductApiClient _apiClient;
//
//   ProductRepository() {
//     _dio = Dio();
//     _apiClient = ProductApiClient(_dio);
//   }
//
//   @override
//   Future<ProductModel> getSingleProduct(String id) async {
//     var res = await _apiClient.getSingleProduct(id);
//
//     // Logger().d(res.title);
//
//     return res;
//   }
// }
