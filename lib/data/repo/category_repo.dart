import 'package:dio/dio.dart';
import 'package:food_order_jahad/data/clients/product_api_client/product_api_client.dart';
import 'package:food_order_jahad/data/clients/search/search_api_client.dart';
import 'package:food_order_jahad/data/data_source/serach_data_source.dart';
import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';
import 'package:food_order_jahad/data/models/search/search_result_model.dart';
import 'package:logger/logger.dart';

import '../clients/categories/category_api_client.dart';
import '../data_source/category_data_source.dart';
import '../data_source/product_data_source.dart';

class CategoryRepository extends CategoryDataSource {
  Dio _dio = Dio();
  late CategoryApiClient _apiClient;

  CategoryRepository() {
    _dio = Dio();
    _apiClient = CategoryApiClient(_dio);
  }

  @override
  Future<List<Category>> categories()async{
    return await _apiClient.categories();
  }
}
