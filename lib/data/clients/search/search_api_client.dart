import 'package:dio/dio.dart';
import 'package:food_order_jahad/data/models/search/search_result_model.dart';
import 'package:retrofit/retrofit.dart';

part 'search_api_client.g.dart';

@RestApi(baseUrl: "https://api.escuelajs.co/api/v1")
abstract class SearchApiClient {
  factory SearchApiClient(Dio dio, {String baseUrl}) = _SearchApiClient;

  @GET('/products/')
  Future<List<SearchResultModel>> search(
      @Query("title") String? title,
      @Query("categoryId") int? categoryId,
      @Query("price_min") double? priceMin,
      @Query("price_max") double? priceMax);
}
