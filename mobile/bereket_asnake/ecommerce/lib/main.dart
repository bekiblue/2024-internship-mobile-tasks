import 'package:ecommerce/addProduct.dart';
import 'package:ecommerce/homePage.dart';
import 'package:ecommerce/detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ecommerce app',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/add_product': (context) => AddProduct(),
        '/product_detail': (context) => const Detail(),
        '/edit_product': (context) => AddProduct(edit: true)
      },
    );
  }
}
