import 'package:get/get.dart';
import 'package:learn_getx/models/product.dart';

class ShoppingController extends GetxController{
  /// all ListData of Product Class Store in products
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  /// This method using fetch data to homePage
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