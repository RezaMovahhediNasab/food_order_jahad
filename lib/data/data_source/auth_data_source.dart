

import 'package:food_order_jahad/data/models/base_response.dart';
import 'package:food_order_jahad/data/models/login_model.dart';
import 'package:food_order_jahad/data/rqModel/login_rqm.dart';

abstract class AuthDataSource {

  Future<BaseResponse<LoginModel>>  login(LoginRQM loginRQM);



}