import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';
import 'package:food_order_jahad/data/models/search/search_result_model.dart';

abstract class SearchDataSource {
  Future<List<SearchResultModel>> search(
      {String? title, double? minPrice, double? maxPrice, int? Category});
}
