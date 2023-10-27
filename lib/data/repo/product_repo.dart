import 'package:dio/dio.dart';
import 'package:food_order_jahad/data/clients/product_api_client/product_api_client.dart';
import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';
import 'package:logger/logger.dart';

import '../data_source/product_data_source.dart';

class ProductRepository extends ProductDataSource {
  Dio _dio = Dio();
  late ProductApiClient _apiClient;

  ProductRepository() {
    _dio = Dio();
    _apiClient = ProductApiClient(_dio);
  }

  @override
  Future<BaseResponse<List<ProductModel>>> getAllProduct(String token) {
    try {
      return _apiClient.getAllProductApi(token);
    } catch (e) {
      rethrow;
    }
  }
}
