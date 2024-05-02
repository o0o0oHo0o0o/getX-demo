import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/Products.dart';
import 'CartScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shop'),),
      body: SafeArea(
        child: Column(
          children: [
            Products(),
            ElevatedButton(
              child: Text('Go to cart'),
              onPressed: () => Get.to(CartScreen())
            ),
          ],
        ),
      )
    );
  }
}
