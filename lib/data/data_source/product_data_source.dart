import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';

abstract class ProductDataSource {
  Future<BaseResponse<List<ProductModel>>> getAllProduct(String token);
}
