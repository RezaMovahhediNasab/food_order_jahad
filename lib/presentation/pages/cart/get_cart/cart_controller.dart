import 'package:food_order_jahad/data/models/cart/cart.dart';
import 'package:food_order_jahad/data/models/cart/product_cart_model.dart';
import 'package:food_order_jahad/data/models/platzi_product_model/pruduct2.dart';
import 'package:get/get.dart';

import '../../../../data/repo/cart_repo.dart';

class CartController extends GetxController {
  CartRepository cartRepository = CartRepository();
  List<ProductCart> carts = [];

  @override
  void onInit() {
    super.onInit();
    getCart();
  }

  Future getCart() async {
    try {
      var q = await cartRepository.userCarts(2);
      if (q[0].products != null) {
        carts = q[0].products!;
        update();
      }
    } catch (e) {}
  }
}
