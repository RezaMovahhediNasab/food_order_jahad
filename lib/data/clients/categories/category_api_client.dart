import 'package:dio/dio.dart';
import 'package:food_order_jahad/data/models/search/search_result_model.dart';
import 'package:retrofit/retrofit.dart';

part 'category_api_client.g.dart';

@RestApi(baseUrl: "https://api.escuelajs.co/api/v1")
abstract class CategoryApiClient {
  factory CategoryApiClient(Dio dio, {String baseUrl}) = _CategoryApiClient;

  @GET('/categories')
  Future<List<Category>> categories();
}
