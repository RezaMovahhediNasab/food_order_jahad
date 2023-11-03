import 'package:dio/dio.dart';
import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';
import 'package:retrofit/retrofit.dart';

part 'product_api_client.g.dart';

@RestApi(baseUrl: "https://apinaynava.metadatads.com/api/v1")
abstract class ProductApiClient {
  factory ProductApiClient(Dio dio, {String baseUrl}) = _ProductApiClient;

  @GET('/products/all')
  Future<BaseResponse<List<ProductModel>>> getAllProductApi(
    @Header('Authorization') String token,
  );
}
