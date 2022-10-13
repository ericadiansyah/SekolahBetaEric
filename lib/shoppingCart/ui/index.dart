import 'package:flutter/material.dart';
import 'package:helloworld/shoppingCart/models/product.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> items = [
      Product(id: '1', name: 'Item 1', price: 10000, image: 'assets/shoe1.png'),
      Product(id: '2', name: 'Item 2', price: 10000, image: 'assets/shoe2.png'),
      Product(id: '3', name: 'Item 3', price: 10000, image: 'assets/shoe3.png'),
      Product(id: '4', name: 'Item 4', price: 10000, image: 'assets/shoe1.png'),
      Product(id: '5', name: 'Item 5', price: 10000, image: 'assets/shoe2.png'),
      Product(id: '6', name: 'Item 6', price: 10000, image: 'assets/shoe3.png'),
      Product(id: '7', name: 'Item 7', price: 10000, image: 'assets/shoe1.png'),
      Product(id: '8', name: 'Item 8', price: 10000, image: 'assets/shoe2.png'),
      Product(id: '9', name: 'Item 9', price: 10000, image: 'assets/shoe3.png'),
      Product(
          id: '10', name: 'Item 10', price: 10000, image: 'assets/shoe1.png'),
      Product(
          id: '11', name: 'Item 11', price: 10000, image: 'assets/shoe2.png'),
      Product(
          id: '12', name: 'Item 12', price: 10000, image: 'assets/shoe3.png'),
    ];

    final List<int> prices = [
      18000,
      25000,
      100000,
      42000,
      77000,
      78000,
      11000,
      60000,
      149000,
      200000
    ];
    final List<String> pictures = [
      'assets/shoe1.png',
      'assets/shoe2.png',
      'assets/shoe3.png',
      'assets/shoe1.png',
      'assets/shoe2.png',
      'assets/shoe3.png',
      'assets/shoe1.png',
      'assets/shoe2.png',
      'assets/shoe3.png',
      'assets/shoe1.png',
      'assets/shoe2.png'
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Back',
        ),
        title: const Text('Shopping Cart'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(items[index].name),
                    leading: Image.asset(
                      items[index].image,
                      height: 56.0,
                      width: 56.0,
                      fit: BoxFit.cover,
                    ),
                    subtitle: Text(
                      'Rp${items[index].price}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    // trailing: IconButton(
                    //   icon: const Icon(Icons.delete),
                    //   onPressed: () {},
                    // ),
                  ),
                  const ShoppingCartItemQty(),
                ],
              ),
            );
            //Container(
            //   color: Colors.teal.shade200,
            //   padding: const EdgeInsets.all(40.0),
            //   child: Text(items[index]),
            // );
          }),
    );
  }
}

class ShoppingCartItemQty extends StatefulWidget {
  const ShoppingCartItemQty({super.key});

  @override
  State<ShoppingCartItemQty> createState() => _ShoppingCartItemQtyState();
}

class _ShoppingCartItemQtyState extends State<ShoppingCartItemQty> {
  int _qty = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        IconButton(
          onPressed: () {
            setState(() {
              if (_qty > 1) _qty--;
            });
          },
          icon: const Icon(Icons.remove),
        ),
        Text('$_qty'),
        IconButton(
          onPressed: () {
            setState(() {
              _qty++;
            });
          },
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
