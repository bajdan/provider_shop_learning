import 'package:flutter/material.dart';
import 'package:provider_shop_learning/models/product_model.dart';

class CartCard extends StatelessWidget {
  final Product product;

  const CartCard({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              color: const Color(0xFF423f4c),
              borderRadius: BorderRadius.circular(5.0)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(product.imageSource),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.name, textAlign: TextAlign.start, style: const TextStyle(color: Colors.white),),
                    Text(product.description, textAlign: TextAlign.start,style: const TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${product.price.toString()}\$', style: const TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}