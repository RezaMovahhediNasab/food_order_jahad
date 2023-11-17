import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_jahad/data/models/search/search_result_model.dart';
import 'package:food_order_jahad/data/repo/category_repo.dart';
import 'package:food_order_jahad/data/repo/search_repo.dart';
import 'package:get/get.dart';

class PageSearchController extends GetxController {
  SearchRepository searchRepository = SearchRepository();
  CategoryRepository categoryRepository = CategoryRepository();
  RxBool loading = RxBool(false);
  List<SearchResultModel> results = [];
  List<Category> categories = [];




  RxInt selectedIndex = RxInt(0);

  @override
  void onInit() {
    super.onInit();
    getCategories();
  } // RxDouble priceValue = RxDouble(50);

  getCategories() async {
    var a = await categoryRepository.categories();
    if (a.isNotEmpty) {
      categories = a;
      update();
    }
  }

  Rx<RangeValues> ranges = Rx(const RangeValues(0, 100));

  TextEditingController searchController = TextEditingController();

  Future search({double? min, double? max, int? category}) async {
    loading.value = true;
    var a = await searchRepository.search(title: searchController.text,
        Category: category,
        maxPrice: max,
        minPrice: min);

    if (a.isNotEmpty) {
      loading.value = false;

      results = a;
      update();
    } else {
      loading.value = false;
    }
  }

  // onChangeSlider(double value){
  //   priceValue.value = value;
  // }

  onChangeSlider(RangeValues values) {
    ranges.value = values;
  }
}
