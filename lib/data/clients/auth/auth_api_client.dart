import 'package:dio/dio.dart';
import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/login_model.dart';
import 'package:food_order_jahad/data/rqModel/login_rqm.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_client.g.dart';

@RestApi(baseUrl: "https://apinaynava.metadatads.com/api/")
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {String baseUrl}) = _AuthApiClient;

  @POST('/tokens')
  Future<BaseResponse<LoginModel>> loginApi(@Body() LoginRQM loginRQM);
}
