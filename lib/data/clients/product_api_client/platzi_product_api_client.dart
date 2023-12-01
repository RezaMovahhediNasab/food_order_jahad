import 'package:dio/dio.dart';
import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/platzi_product_model/pruduct2.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';
import 'package:retrofit/retrofit.dart';

part 'platzi_product_api_client.g.dart';

@RestApi(baseUrl: "https://api.escuelajs.co/api/v1/products/")
abstract class PlatziProductApiClient {
  factory PlatziProductApiClient(Dio dio, {String baseUrl}) = _PlatziProductApiClient;

  @GET('')
  Future<List<PlatziProductModel>> getAllPlatziProductApi();
}
