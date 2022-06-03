import 'package:get/get.dart';
import 'package:learn_getx/models/product.dart';

class ShoppingController extends GetxController{
  /// bind UI with ModelClass
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async{
    await Future.delayed(Duration(seconds: 1));

    var productResult = [
      Product(
          productId: 1,
          productPrice: 30,
          productDesc: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProd'),
      Product(
          productId: 2,
          productPrice: 40,
          productDesc: 'some description about product',
          productImage: 'abd',
          productName: 'SecProd'),
      Product(
          productId: 3,
          productPrice: 49.5,
          productDesc: 'some description about product',
          productImage: 'abd',
          productName: 'ThirdProd'),
    ];

    products.value = productResult;
  }
}