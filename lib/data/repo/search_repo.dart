import 'package:dio/dio.dart';
import 'package:food_order_jahad/data/clients/product_api_client/product_api_client.dart';
import 'package:food_order_jahad/data/clients/search/search_api_client.dart';
import 'package:food_order_jahad/data/data_source/serach_data_source.dart';
import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';
import 'package:food_order_jahad/data/models/search/search_result_model.dart';
import 'package:logger/logger.dart';

import '../data_source/product_data_source.dart';

class SearchRepository extends SearchDataSource {
  Dio _dio = Dio();
  late SearchApiClient _apiClient;

  SearchRepository() {
    _dio = Dio();
    _apiClient = SearchApiClient(_dio);
  }

  @override
  Future<List<SearchResultModel>> search(
      {String? title, double? minPrice, double? maxPrice, int? Category}) {
    return _apiClient.search(title, Category, minPrice, maxPrice);
  }
}
