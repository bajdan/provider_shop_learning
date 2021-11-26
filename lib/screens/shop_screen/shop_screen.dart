import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shop_learning/models/product_model.dart';
import 'package:provider_shop_learning/screens/shop_screen/widgets/product_card.dart';
import 'package:provider_shop_learning/screens/shop_screen/widgets/shop_cart_icons.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF383443),
      appBar: AppBar(
        backgroundColor: const Color(0xFF423f4c),
        title: const Text("Shop"),
        centerTitle: true,
        actions: const [
          ShopCartIcon(),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Consumer<List<Product>>(
              builder: (context, List<Product> products, _) {
                return Expanded(
                  child: products.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            return ProductCard(
                              product: products[index],
                            );
                          },
                        ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}




