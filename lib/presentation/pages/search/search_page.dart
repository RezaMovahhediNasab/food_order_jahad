import 'package:flutter/material.dart';
import 'package:food_order_jahad/presentation/pages/product/product_page.dart';
import 'package:food_order_jahad/presentation/pages/search/search_controller.dart';
import 'package:get/get.dart';
import 'package:retrofit/retrofit.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PageSearchController>(
      init: PageSearchController(),
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    title: const Text('Search Page'),
                    bottom: PreferredSize(
                        preferredSize: const Size(double.infinity, 80),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    if (controller.categories.isNotEmpty) {
                                      showBottomSheet(
                                        backgroundColor: Colors.grey.shade200,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(24)),
                                        context: context,
                                        builder: (context) => FilterSheet(),
                                      );
                                    }
                                  },
                                  icon: const Icon(Icons.filter_list_alt)),
                              Expanded(
                                child: SearchBar(
                                    onSubmitted: (value) async {
                                      await controller.search();
                                    },
                                    onChanged: (value) async {
                                      await controller.search();
                                    },
                                    controller: controller.searchController,
                                    leading: const Icon(Icons.search,
                                        color: Colors.grey),
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.grey.shade200),
                                    hintText: 'Search Some Thing....',
                                    hintStyle: const MaterialStatePropertyAll(
                                        TextStyle(color: Colors.grey))),
                              ),
                            ],
                          ),
                        )),
                  )
                ];
              },
              body: Obx(() => controller.loading.value
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemBuilder: (context, index) => ListTile(
                          title: Text(controller.results[index].title ?? ''),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                controller.results[index].images?[0] ?? ''),
                          )),
                      itemCount: controller.results.length,
                    ))),
        ),
      ),
    );
  }
}

class FilterSheet extends GetView<PageSearchController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<PageSearchController>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Center(
            child: Text('Filter'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Price',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Price Range :', style: TextStyle(fontSize: 14)),
                      Text(
                          'From ${controller.ranges.value.start.round().toString()} to ${controller.ranges.value.end.round().toString()}')
                    ],
                  ),
                  // Slider(
                  //   label: 'adsdas',
                  //   value: controller
                  //       .priceValue.value,
                  //   onChanged: (value) {
                  //     controller
                  //         .onChangeSlider(
                  //         value);
                  //   },
                  //   max: 500,
                  //   min: 50,
                  // ),

                  RangeSlider(
                    min: 0,
                    max: 1000,
                    values: controller.ranges.value,
                    onChanged: (value) {
                      controller.onChangeSlider(value);
                    },
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Categories',
                    style: TextStyle(fontSize: 24),
                  ),

                  Wrap(
                    children: controller.categories
                        .map((e) => ChoiceChip(
                            onSelected: (value) {
                              controller.selectedIndex.value =
                                  value ? controller.categories.indexOf(e) : 0;
                            },
                            label: Text(e.name ?? ''),
                            selected: controller.selectedIndex.value ==
                                controller.categories.indexOf(e)))
                        .toList(),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  FilledButton(
                      onPressed: () async {
                        Get.back();
                        await controller.search(
                            min: controller.ranges.value.start,
                            max: controller.ranges.value.end,
                            category: controller
                                .categories[controller.selectedIndex.value].id);
                      },
                      child: Text('Set Filter'))
                ],
              ))
        ],
      ),
    );
  }
}
