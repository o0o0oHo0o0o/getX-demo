import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shopping_cart/controllers/Cart_controller.dart';

import '../models/Product_model.dart';

class CartProducts extends StatelessWidget {
  CartProducts({super.key});
  final CartController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 600,
        child: ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (BuildContext context, int index){
            return CartProductCard(
              controller: controller,
              product: controller.products.keys.toList()[index],
              quantity: controller.products.values.toList()[index],
              index: index,
            );
          },
        ),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;
  const CartProductCard({
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(radius: 30, backgroundImage: NetworkImage(product.imageUrl),),
          SizedBox(width: 20,),
          Expanded(
            child: Text(product.name),
          ),
          IconButton(
            onPressed: (){
              controller.removeProduct(product);
            },
            icon: Icon(Icons.remove_circle),
          ),
          Expanded(
            child: Text('${quantity}'),
          ),
          IconButton(
            onPressed: (){
              controller.addProduct(product, false);
            },
            icon: Icon(Icons.add_circle),
          ),
        ],
      ),
    );
  }
}

