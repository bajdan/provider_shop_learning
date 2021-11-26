import 'package:flutter/foundation.dart';
import 'package:provider_shop_learning/models/product_model.dart';

class CartProvider extends ChangeNotifier{
  List<Product> _products = [];
  List<Product> get products => _products;
  late double totalPrice = 0;

  void addProduct(Product product){
    _products.add(product);
    _calculateTotalPrice();
    notifyListeners();
  }

  void _calculateTotalPrice(){
    totalPrice = 0;
    for (Product product in _products) {totalPrice+=product.price;}
  }
}