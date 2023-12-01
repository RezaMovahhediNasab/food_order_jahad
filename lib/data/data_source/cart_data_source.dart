import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/cart/cart.dart';
import 'package:food_order_jahad/data/models/cart/cart_response_model.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';
import 'package:food_order_jahad/data/models/search/search_result_model.dart';
import 'package:food_order_jahad/data/models/cart/product_cart_model.dart';

import '../rqModel/add_to_cart_rqm.dart';

abstract class CartDataSource {
  Future<List<Cart>> userCarts(int id);



  Future<CartResponseModel> addToCart(AddCartRQM cartRqm);
}
