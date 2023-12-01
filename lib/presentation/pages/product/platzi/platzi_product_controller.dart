import 'package:food_order_jahad/data/models/platzi_product_model/pruduct2.dart';
import 'package:food_order_jahad/data/repo/cart_repo.dart';
import 'package:food_order_jahad/data/repo/platzi_product_repo.dart';
import 'package:food_order_jahad/data/rqModel/add_to_cart_rqm.dart';
import 'package:get/get.dart';

class PlatziProductController extends GetxController
    with StateMixin<List<PlatziProductModel>> {
  PlatziProductRepository productRepository = PlatziProductRepository();
  CartRepository cartRepository = CartRepository();

  RxBool isLoading = RxBool(false);

  Future getAllProduct() async {
    try {
      RxStatus.loading();

      List<PlatziProductModel> res =
          await productRepository.getAllPlatziProduct();
      change(res, status: RxStatus.success());
    } catch (e) {
      RxStatus.error(e.toString());

      // isFetching.value = false;

      rethrow;
    }
  }

  Future addToCart(AddCartRQM cartRQM) async {
    isLoading.value = true;

    try {
      var a = await cartRepository.addToCart(cartRQM);

      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getAllProduct();
  }
}
