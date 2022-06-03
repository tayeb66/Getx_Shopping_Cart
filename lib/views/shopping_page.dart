import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controllers/cart_controller.dart';
import 'package:learn_getx/controllers/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0.0,
        title: Text('Items',textScaleFactor: 1.5,),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${controller.products.value[index].productName}',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text(
                                            '${controller.products.value[index].productDesc}',
                                            style: TextStyle(fontSize: 20)),
                                      ],
                                    ),
                                    Text(
                                        '\$${controller.products.value[index].productPrice}',
                                        style: TextStyle(fontSize: 20)),
                                  ],
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      cartController.addToCartItem(
                                          controller.products.value[index]);
                                    },
                                    child: Text('Add to cart'))
                              ]),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            GetX<CartController>(
              builder: ((controller) {
                return Text(
                  'Total item: \$ ${controller.totalPrice}',
                  textScaleFactor: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                );
              }),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: GetX<CartController>(
          builder: (controller) {
            return Text(
              '${controller.itemLength}',
              textScaleFactor: 1.5,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            );
          },
        ),
        icon: Icon(Icons.add_business_outlined),
      ),
    );
  }
}
