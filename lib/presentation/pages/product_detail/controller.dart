import 'package:food_order_jahad/data/repo/product_repo.dart';
import 'package:get/get.dart';

class ProductDetaillControllet extends GetxController {
  ProductRepository productRepository = ProductRepository();

  Future getProduct(String id) async {
    await productRepository.getSingleProduct(id);
  }
}
