import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_jahad/presentation/pages/product_detail/product_detaill_page.dart';
import 'package:get/get.dart';

import 'product_controller.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (controller) => Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250,
                leading: BackButton(color: Colors.white),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
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
                child: Container(
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
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
                                        padding: EdgeInsets.symmetric(
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
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              itemBuilder: (context, index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                elevation: 3,
                child: ListTile(
                  onTap: () => Get.to(
                    ProductDetailPage(
                        image: state![index].masterImage!, index: index),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  title: Text(state?[index].name ?? ''),
                  trailing: Text("$index"),
                  subtitle: Text("${state?[index].masterPrice}" ?? ''),
                  leading: state?[index].masterImage != null &&
                          state![index].masterImage!.isNotEmpty
                      ? Hero(
                          tag: "image" + index.toString(),
                          child: Image.network(
                            state[index].masterImage!.startsWith('https')
                                ? state[index].masterImage!
                                : "https://apinaynava.metadatads.com${state[index].masterImage ?? ''}",
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
