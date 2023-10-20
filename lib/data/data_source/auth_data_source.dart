

import 'package:food_order_jahad/data/models/login_model.dart';
import 'package:food_order_jahad/data/rqModel/login_rqm.dart';

abstract class AuthDataSource {

  Future<LoginModel> login(LoginRQM loginRQM);



}