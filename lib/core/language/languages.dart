import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'fa_FA': {
          'sign_in': 'ورود',
          'first_name': 'لطفا نام خود را وارد کنید',
        },
        'en_US': {
          'sign_in': 'Sign in',
          'first_name': 'please enter your firstName',
        },
      };
}
