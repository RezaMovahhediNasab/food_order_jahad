import 'package:dio/dio.dart';
import 'package:food_order_jahad/data/clients/auth/auth_api_client.dart';
import 'package:food_order_jahad/data/data_source/auth_data_source.dart';
import 'package:food_order_jahad/data/models/login_model.dart';
import 'package:food_order_jahad/data/rqModel/login_rqm.dart';
import 'package:logger/logger.dart';

class AuthRepository extends AuthDataSource {
  Dio _dio = Dio();
  late AuthApiClient _apiClient;

  AuthRepository() {
    _dio = Dio();
    _apiClient = AuthApiClient(_dio);
  }

  @override
  Future<LoginModel> login(LoginRQM loginRQM) async {
    var res = await _apiClient.loginApi(loginRQM);
    return res;
  }
}
