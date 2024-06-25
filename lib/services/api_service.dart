import '../models/category.dart';
import '../models/product.dart';

class ApiService {
  Future<List<Category>> fetchCategories() async {
    await Future.delayed(Duration(seconds: 2));

    List<Category> categories = [
      Category(
        id: 1,
        name: 'Category 1',
        products: [
          Product(id: 1, name: 'Product 1', price: 10.0),
          Product(id: 2, name: 'Product 2', price: 20.0),
        ],
      ),
      Category(
        id: 2,
        name: 'Category 2',
        products: [
          Product(id: 3, name: 'Product 3', price: 30.0),
          Product(id: 4, name: 'Product 4', price: 40.0),
        ],
      ),
      Category(
        id: 3,
        name: 'Category 3',
        products: [
          Product(id: 5, name: 'Product 5', price: 50.0),
          Product(id: 6, name: 'Product 6', price: 60.0),
        ],
      ),
    ];

    return categories;
  }
}
