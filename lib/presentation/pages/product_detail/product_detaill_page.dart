import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String image;
  final int index;

  const ProductDetailPage({Key? key, required this.image,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
            tag: "image" + index.toString(),
            child: Image.network(
                "https://apinaynava.metadatads.com${image ?? ''}",
                fit: BoxFit.contain)),
      ),
    );
  }
}
