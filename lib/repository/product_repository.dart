import 'package:provider_shop_learning/models/product_model.dart';

class ProductRepository{
  List<Product> products =[
    Product(name: 'Тёмное пиво', description: '...', imageSource: 'assets/images/image_1.png', id: 1, price: 19.50),
    Product(name: 'Светое пиво', description: '...', imageSource: 'assets/images/image_2.png', id: 2, price: 18.20),
    Product(name: 'Вики Шотландский', description: '...', imageSource: 'assets/images/image_3.png', id: 3, price: 580.0),
    Product(name: 'Текила', description: '...', imageSource: 'assets/images/image_4.png', id: 4, price: 425.0),
    Product(name: 'Виски', description: '...', imageSource: 'assets/images/image_5.png', id: 5, price: 879.90),
  ];

  Future<List<Product>> getAllProducts() async{
    await Future.delayed(const Duration(seconds: 2));
    return products;
  }
}