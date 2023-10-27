import 'package:food_order_jahad/core/local_storage.dart';
import 'package:food_order_jahad/core/local_storage.dart';
import 'package:food_order_jahad/data/models/product_model/product_model.dart';
import 'package:food_order_jahad/data/repo/product_repo.dart';
import 'package:get/get.dart';

import '../../../data/models/base_response.dart';

class ProductController extends GetxController {
  ProductRepository productRepository = ProductRepository();
  List<ProductModel> productList = [];
  final LocalStorage _localStorage = Get.find<LocalStorage>();
  RxBool isFetching = RxBool(false);

  Future getAllProduct() async {
    try {
      if (_localStorage.token.isNotEmpty) {
        isFetching.value = true;
        BaseResponse<List<ProductModel>> res =
            await productRepository.getAllProduct(_localStorage.token);
        if (res.succeeded! && res.data != null) {
          productList = res.data!;
          isFetching.value = false;
          update();
        }
      }
    } catch (e) {
      isFetching.value = false;

      rethrow;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getAllProduct();
  }
}
