import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> product = ['Product 1', 'Product 2', 'Product 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to ShopScreen (route '2') and pass the product list
            Navigator.pushNamed(
              context,
              '2',
              arguments: product, // Pass the product list as an argument
            );
          },
          child: Text('Next Page'),
        ),
      ),
    );
  }
}

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Check if arguments are passed, and handle the type conversion
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final List<String> products =
        arguments != null ? arguments as List<String> : [];

    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Screen'),
      ),
      body: ListView.builder(
        itemCount: products.length, // Specify the item count
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
          );
        },
      ),
    );
  }
}
