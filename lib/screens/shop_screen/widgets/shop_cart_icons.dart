import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shop_learning/providers/cart_provider.dart';

class ShopCartIcon extends StatelessWidget {
  const ShopCartIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/cart',
            );
          },
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
        Consumer<CartProvider>(
          builder: (context, value, child) {
            return Text(
              value.products.length.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFfc9610),
              ),
            );
          },
        ),
      ],
    );
  }
}