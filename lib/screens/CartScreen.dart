import 'package:flutter/material.dart';
import 'package:getx_shopping_cart/widgets/Products.dart';

import '../widgets/CartProducts.dart';
import '../widgets/CartTotal.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your cart'),),
      body: Column(
        children: [
          CartProducts(),
          CartTotal(),

        ],
      ),
    );
  }
}
