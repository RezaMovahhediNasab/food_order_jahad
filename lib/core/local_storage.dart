import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorage extends GetxService {
  static final _box = GetStorage();

  static const tokenKey = 'TokenKey';

  set token(String token) {
    _box.write(tokenKey, token);
  }

  String get token {
    String a = _box.read(tokenKey) ?? '';

    return a;
  }
}
