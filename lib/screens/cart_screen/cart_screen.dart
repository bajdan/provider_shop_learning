import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shop_learning/providers/cart_provider.dart';
import 'package:provider_shop_learning/screens/cart_screen/widgets/cart_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF383443),
      appBar: AppBar(
        backgroundColor: const Color(0xFF423f4c),
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Consumer<CartProvider>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(
                  child: value.products.isEmpty
                      ? const Center(
                          child: Text(
                            'Cart is empty',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : ListView.builder(
                          itemCount: value.products.length,
                          itemBuilder: (context, index) {
                            return CartCard(
                              product: value.products[index],
                            );
                          }),
                ),
                const SizedBox(height: 10,),
                Text(
                  'Total price: ${value.totalPrice.toStringAsFixed(2)}\$',
                  style: const TextStyle(color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary:
                      const Color(0xFF423f4c).withOpacity(0.9),
                      onSurface: const Color(0xFF423f4c),
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60.0,
                      child: const Center(child: Text('CONFIRM')),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


