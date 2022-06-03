import 'package:get/get.dart';
import 'package:learn_getx/models/product.dart';

class CartController extends GetxController {
  /// all ListData of Product Class Store in cartItems
  var cartItems = <Product>[].obs;

  /// Calculate items price
  double get totalPrice =>
      cartItems.fold(0, (sum, item) => sum + item.productPrice);
  /// Items length
  int get itemLength => cartItems.length;

  /// For GetX()
  void addToCartItem(Product product) {
    cartItems.add(product);

  }

  /// for GetBuilder()
  var testAmount = 0.0;
  // void addToCartItem(Product product) {
  //   cartItems.add(product);
  //   testAmount = totalPrice;
  //   update();
  // }

}
