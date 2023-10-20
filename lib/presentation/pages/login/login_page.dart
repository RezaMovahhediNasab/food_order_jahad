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
                  Text("Sign in", style: Get.textTheme.headlineMedium),
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: TextFieldWidget(
                        textEditingController: controller.nameController,
                        title: 'First Name',
                        hint: 'Enter your First name'),
                  ),
                  SizedBox(
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
                      child:Obx(() =>  ElevatedButton(
                          onPressed: () async {
                            await controller.loginRequest();
                          },
                          child: controller.isLoading.value
                              ? CupertinoActivityIndicator()
                              : Text('Get Start'))),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
