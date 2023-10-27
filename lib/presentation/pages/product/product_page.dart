import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'product_controller.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (controller) => Center(
        child: Obx(() => controller.isFetching.value
            ? const CupertinoActivityIndicator()
            : Text(controller.productList[0].name ?? "empty")),
      ),
    );
  }
}
