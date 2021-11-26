import 'package:provider_shop_learning/models/product_model.dart';
import 'package:provider_shop_learning/repository/product_repository.dart';

class CatalogProvider{
  List<Product> products = [];

  Future<List<Product>> loadData() async {
    products = await ProductRepository().getAllProducts();
    return products;
  }
}