import 'package:flutter/material.dart';
import 'package:food_order_jahad/data/rqModel/login_rqm.dart';
import 'package:food_order_jahad/presentation/pages/home_page.dart';
import 'package:get/get.dart';

import '../../../data/repo/auth_repo.dart';

class LoginController extends GetxController {
  late final TextEditingController nameController;
  late final TextEditingController lastNameController;
  RxBool isLoading = RxBool(false);

  @override
  void onInit() {
    super.onInit();

    nameController = TextEditingController();
    lastNameController = TextEditingController();
//
  }

  AuthRepository authRepository = AuthRepository();

  Future loginRequest() async {
    if (nameController.text.isNotEmpty && lastNameController.text.isNotEmpty) {
      isLoading.value = true;

      try {
        var res = await authRepository.login(LoginRQM(
            email: nameController.text, password: lastNameController.text));
        isLoading.value = false;
        if (res.token != null) {
          Get.to(const HomePage());
        }
      } catch (e) {
        isLoading.value = false;
        Get.snackbar('error', e.toString());

        //todo error handling
      }
    }
  }
}
