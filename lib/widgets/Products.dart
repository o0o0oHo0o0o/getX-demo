import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shopping_cart/controllers/Cart_controller.dart';
import 'package:getx_shopping_cart/models/Product_model.dart';
class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(child: ListView.builder(
        itemCount: Product.products.length,
        itemBuilder: (BuildContext context, int index){
          return ProductCard(index: index);
        },
    ));
  }
}

class ProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  ProductCard({
    required this.index
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              Product.products[index].imageUrl,
            )
          ),
           SizedBox(width: 20,),
          Expanded(
            child: Text(
              Product.products[index].name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
          )),
          Expanded(
              child: Text(
                '${Product.products[index].price}',
                style: TextStyle(
                  fontSize: 18,
                ),
          )),
          IconButton(
            onPressed: (){
              cartController.addProduct(Product.products[index], true);
            },
            icon: Icon(
              Icons.add_circle,
            )),
        ],
      ),
    );
  }
}
