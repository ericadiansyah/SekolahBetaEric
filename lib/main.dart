import 'package:flutter/material.dart';
import 'package:helloworld/shoppingCart/models/product.dart';
//import 'package:helloworld/helloWorld.dart';
//import 'package:helloworld/shoppingCart/models/product.dart';
import 'package:helloworld/shoppingCart/ui/catalog/index.dart';
import 'package:helloworld/shoppingCart/ui/index.dart';
import 'package:helloworld/shoppingCart/ui/product_detail/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Product product = Product(
    //     id: "2",
    //     name: "Shoe",
    //     description: "This is a shoe",
    //     price: 129000,
    //     image: "assets/shoe2.png");

    return MaterialApp(
      //title: 'Sekolah B eta Eric',
      title: 'InThe Store',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primarySwatch: Colors.teal,
      ),
      routes: {
        '/': (context) => const CatalogPage(),
        '/shopping_cart': (context) => const ShoppingCartPage(),
        '/product_detail': (context) => ProductDetailPage(
            product: ModalRoute.of(context)?.settings.arguments as Product)
      },
      // home: ProductDetailPage(
      //   product: product,
      // ),
      //home: CatalogPage(),
      //home: ShoppingCartPage(),
    );
  }
}
