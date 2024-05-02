import 'package:get/get.dart';
import 'package:getx_shopping_cart/models/Product_model.dart';

class CartController extends GetxController{
  var _products = {}.obs;

  void addProduct(Product product, bool visibleSnack){
    if (_products.containsKey(product)){
      _products[product] += 1;
    } else
      _products[product] = 1;
    if (visibleSnack) Get.snackbar(
      'Added Success',
      'You have added ${product.name} to the cart',
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 1),
    );
  }

  get products => _products;

  void removeProduct(Product product) {
    if(_products.containsKey(product) && _products[product] == 1){
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product]-=1;
    }
  }

  get total => _products.entries
              .map((product) => product.key.price * product.value)
              .toList()
              .reduce((value, element) => value + element)
              .toStringAsFixed(2);
}