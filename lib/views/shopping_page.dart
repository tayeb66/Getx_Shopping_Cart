import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controllers/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());

  ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
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
                                          '',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text(
                                            '',
                                            style: TextStyle(fontSize: 20)),
                                      ],
                                    ),
                                    Text(
                                        '',
                                        style: TextStyle(fontSize: 20)),
                                  ],
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Add to cart'))
                              ]),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Text(
              'Total item: ',
              textScaleFactor: 2,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
