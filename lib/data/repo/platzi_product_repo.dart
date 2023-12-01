import 'package:dio/dio.dart';
import 'package:food_order_jahad/data/clients/product_api_client/product_api_client.dart';
import 'package:food_order_jahad/data/data_source/platzi_product_data_source.dart';
import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/platzi_product_model/pruduct2.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';
import 'package:logger/logger.dart';

import '../clients/product_api_client/platzi_product_api_client.dart';
import '../data_source/product_data_source.dart';

class PlatziProductRepository extends PlatziProductDataSource {
  Dio _dio = Dio();
  late PlatziProductApiClient _apiClient;

  PlatziProductRepository() {
    _dio = Dio();
    _apiClient = PlatziProductApiClient(_dio);
  }

  @override
  Future<List<PlatziProductModel>> getAllPlatziProduct() async {
    return await _apiClient.getAllPlatziProductApi();
  }
}
