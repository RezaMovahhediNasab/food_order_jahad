import 'package:dio/dio.dart';
import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/cart/cart_response_model.dart';
import 'package:food_order_jahad/data/models/login_model.dart';
import 'package:food_order_jahad/data/models/cart/product_cart_model.dart';
import 'package:food_order_jahad/data/rqModel/add_to_cart_rqm.dart';
import 'package:food_order_jahad/data/rqModel/login_rqm.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/cart/cart.dart';

part 'cart_api_client.g.dart';

@RestApi(baseUrl: "https://fakestoreapi.com/carts")
abstract class CartApiClient {
  factory CartApiClient(Dio dio, {String baseUrl}) = _CartApiClient;

  @POST('')
  Future<CartResponseModel> addToCartApi(@Body() AddCartRQM cartRqm);

  @GET('/user/{id}')
  Future<List<Cart>> getUserCart(@Path('id') int id);
}
