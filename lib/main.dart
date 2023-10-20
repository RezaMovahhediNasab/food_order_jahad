import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/pages/login/login_page.dart';
import 'presentation/styles/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData(),
      home: LoginPage(),
    );
  }
}

