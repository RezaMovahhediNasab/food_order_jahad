import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_jahad/presentation/pages/cart/get_cart/cart_controller.dart';
import 'package:food_order_jahad/presentation/pages/login/login_controller.dart';
import 'package:food_order_jahad/presentation/widgets/text_field.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (controller) => Scaffold(
        body: ListView.builder(
          itemCount: controller.carts.length,
          itemBuilder: (context, index) =>
              ListTile(title: Text("${controller.carts[index].productId}")),
        ),
      ),
    );
  }
}
