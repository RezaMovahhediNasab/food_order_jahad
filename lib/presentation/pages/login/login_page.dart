import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_jahad/presentation/pages/login/login_controller.dart';
import 'package:food_order_jahad/presentation/widgets/text_field.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) => Scaffold(
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("sign_in".tr, style: Get.textTheme.headlineMedium),
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.red)),
                      onPressed: () {
                        //TODO SAVE TO LOCALSTORAGE
                        Get.updateLocale(const Locale('fa', 'FA'));
                        //update
                      },
                      child: const Text('Fa')),
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.red)),
                      onPressed: () {
                        Get.updateLocale(const Locale('en', 'US'));
                      },
                      child: const Text('English')),
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: TextFieldWidget(
                        textEditingController: controller.nameController,
                        title: 'first_name'.tr,
                        hint: 'Enter your First name'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldWidget(
                      textEditingController: controller.lastNameController,
                      title: 'First Name',
                      hint: 'Enter your First name'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 48),
                    child: SizedBox(
                      width: double.infinity,
                      child: Obx(() => ElevatedButton(
                          onPressed: () async {
                            await controller.loginRequest();
                          },
                          child: controller.isLoading.value
                              ? const CupertinoActivityIndicator()
                              : const Text('Get Start'))),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
