import 'package:flutter/material.dart';
import 'package:helloworld/shoppingCart/models/product.dart';
import 'package:helloworld/shoppingCart/ui/index.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Back',
        ),
        title: const Text('Product Details'),
      ),
      body: ListView(
        children: [
          Image.asset(
            product.image,
            height: 300,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(
              'Rp${product.price}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              product.name,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ListTile(
            title: const Text(
              'Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              product.description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: TextButton.icon(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(
              //   builder: (BuildContext context) {
              //     return const ShoppingCartPage();
              //   },
              // ));
              Navigator.pushNamed(context, '/shopping_cart');
            },
            icon: const Icon(Icons.shopping_cart_outlined),
            label: const Text('Add to Cart'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.tealAccent.shade700,
            ),
          ),
        )
      ],
    );
  }
}
