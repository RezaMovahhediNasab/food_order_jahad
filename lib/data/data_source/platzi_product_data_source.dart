import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/platzi_product_model/pruduct2.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';

abstract class PlatziProductDataSource {
  Future<List<PlatziProductModel>> getAllPlatziProduct();


}