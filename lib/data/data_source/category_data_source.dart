import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';
import 'package:food_order_jahad/data/models/search/search_result_model.dart';

abstract class CategoryDataSource {
  Future<List<Category>> categories();
}
