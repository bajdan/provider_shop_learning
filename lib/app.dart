import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shop_learning/providers/cart_provider.dart';
import 'package:provider_shop_learning/providers/catalog_provider.dart';
import 'package:provider_shop_learning/models/product_model.dart';
import 'package:provider_shop_learning/screens/cart_screen/cart_screen.dart';
import 'package:provider_shop_learning/screens/shop_screen/shop_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartProvider>.value(value: CartProvider()),
        FutureProvider<List<Product>>(
          create: (_) async => CatalogProvider().loadData(),
          initialData: [],
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const ShopScreen(),
          '/cart': (context) => const CartScreen(),
        },
      ),
    );
  }
}
