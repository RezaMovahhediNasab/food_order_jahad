import 'package:dio/dio.dart';
import 'package:food_order_jahad/data/clients/cart/cart_api_client.dart';
import 'package:food_order_jahad/data/clients/product_api_client/product_api_client.dart';
import 'package:food_order_jahad/data/data_source/cart_data_source.dart';
import 'package:food_order_jahad/data/data_source/platzi_product_data_source.dart';
import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/cart/cart.dart';
import 'package:food_order_jahad/data/models/cart/product_cart_model.dart';
import 'package:food_order_jahad/data/models/platzi_product_model/pruduct2.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';
import 'package:food_order_jahad/data/rqModel/add_to_cart_rqm.dart';
import 'package:logger/logger.dart';

import '../clients/product_api_client/platzi_product_api_client.dart';
import '../data_source/product_data_source.dart';
import '../models/cart/cart_response_model.dart';

class CartRepository extends CartDataSource {
  Dio _dio = Dio();
  late CartApiClient _apiClient;

  CartRepository() {
    _dio = Dio();
    _apiClient = CartApiClient(_dio);
  }

  @override
  Future<CartResponseModel> addToCart(AddCartRQM cartRqm) async {
    return await _apiClient.addToCartApi(cartRqm);
  }

  @override
  Future<List<Cart>> userCarts(int id) async {
    return await _apiClient.getUserCart(id);
  }
}
