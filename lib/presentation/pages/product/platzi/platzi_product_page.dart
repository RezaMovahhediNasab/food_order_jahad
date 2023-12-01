import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_jahad/data/models/cart/product_cart_model.dart';
import 'package:food_order_jahad/data/rqModel/add_to_cart_rqm.dart';
import 'package:food_order_jahad/presentation/pages/cart/get_cart/cart_page.dart';
import 'package:food_order_jahad/presentation/pages/product/platzi/platzi_product_controller.dart';
import 'package:food_order_jahad/presentation/pages/product_detail/product_detaill_page.dart';
import 'package:get/get.dart';

class PlatziProductPage extends StatelessWidget {
  const PlatziProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlatziProductController>(
      init: PlatziProductController(),
      builder: (controller) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(CartPage());
          },
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250,
                leading: const BackButton(color: Colors.white),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ))
                ],
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: Image.network(
                      'https://novincabinco.com/wp-content/uploads/2019/12/%DA%A9%D8%A7%D8%A8%DB%8C%D9%86%D8%AA-%D9%85%D8%AF%D8%B1%D9%86.jpg',
                      fit: BoxFit.cover),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          child: Text('Katsu cabinet'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 12),
                          child: Container(
                            height: 30,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: categories
                                  .map((e) => Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        color: Colors.grey,
                                        child: Text(e),
                                      ))
                                  .toList(),
                            ),
                          ),
                        )
                      ]),
                ),
              ),
            ];
          },
          body: controller.obx(
            (state) => ListView.builder(
              itemCount: state?.length,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              itemBuilder: (context, index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                elevation: 3,
                child: ListTile(
                  onTap: () => Get.to(
                    ProductDetailPage(
                        image: state![index].images![0], index: index),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  title: Text(state?[index].title ?? ''),
                  subtitle: Row(
                    children: [
                      Obx(
                        () => controller.isLoading.value
                            ? CupertinoActivityIndicator()
                            : IconButton(
                                onPressed: () async {
                                  await controller.addToCart(AddCartRQM(
                                      userId: 2,
                                      products: [
                                        ProductCart(
                                            productId: state![index].id!,
                                            quantity: 1)
                                      ]));
                                },
                                icon: Icon(Icons.add),
                              ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.minimize)),
                    ],
                  ),
                  leading: state?[index].images != null &&
                          state![index].images![0].isNotEmpty
                      ? Hero(
                          tag: "image" + index.toString(),
                          child: Image.network(
                            state[index].images![0],
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              );
                            },
                            fit: BoxFit.cover,
                          ),
                        )
                      : Container(),
                ),
              ),
            ),
            onLoading: const Center(child: CupertinoActivityIndicator()),
            onError: (error) => Center(
              child: Container(
                color: Colors.red,
                width: 100,
                height: 300,
                child: Text(error ?? "there is a problem"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<String> categories = [
  'A1',
  'A1',
  'A1',
  'A1',
  'A1',
  'A1',
  'A1',
  'A1',
  'A1',
  'A1',
  'A1',
  'A2',
  'A3',
  'A4',
  'A1',
  'A6',
];
