import 'package:flutter/material.dart';
import 'package:helloworld/shoppingCart/models/product.dart';
import 'package:helloworld/shoppingCart/ui/index.dart';
import 'package:helloworld/shoppingCart/ui/product_detail/index.dart';

class CatalogProductCart extends StatelessWidget {
  const CatalogProductCart({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/product_detail', arguments: product);
          // Navigator.push(context, MaterialPageRoute(
          //   builder: (BuildContext context) {
          //     return ProductDetailPage(product: product);
          //   },
          // ));
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(product.image, fit: BoxFit.cover),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Rp${product.price}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline),
                      ),
                      ConstrainedBox(
                          constraints: const BoxConstraints(minWidth: 200),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const ShoppingCartPage();
                                },
                              ));
                            },
                            icon: const Icon(Icons.shopping_cart_outlined),
                            label: const Text('Add to Cart'),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.tealAccent.shade700,
                            ),
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
          id: "1",
          name: "Shoe 1",
          description: "This is a shoe",
          price: 129000,
          image: "assets/shoe1.png"),
      Product(
          id: "2",
          name: "Shoe 2",
          description: "This is another shoe",
          price: 129000,
          image: "assets/shoe2.png"),
      Product(
          id: "2",
          name: "Shoe 2",
          description: "This is also a shoe",
          price: 129000,
          image: "assets/shoe3.png"),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          tooltip: 'Menu',
        ),
        title: const Text('Catalog'),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(
              //   builder: (BuildContext context) {
              //     return const ShoppingCartPage();
              //   },
              // ));
              Navigator.pushNamed(context, '/shopping_cart');
            },
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Shopping Cart',
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext context, index) {
          return CatalogProductCart(product: products[index]);
        },
      ),
    );
  }
}
