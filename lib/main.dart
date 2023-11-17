import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:food_order_jahad/core/language/languages.dart';
import 'package:food_order_jahad/core/local_storage.dart';
import 'package:food_order_jahad/presentation/pages/product/product_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'presentation/pages/login/login_page.dart';
import 'presentation/pages/search/search_page.dart';
import 'presentation/styles/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final LocalStorage _localStorage = Get.find<LocalStorage>();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      /// get from localStorage
      locale: Get.deviceLocale,

      fallbackLocale: const Locale('fa', 'FA'),
      translations: Languages(),

      title: 'Flutter Demo',
      theme: themeData(),
      home: SearchPage() ,
    );
  }
}

Future initServices() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  Get.put(LocalStorage());
}
