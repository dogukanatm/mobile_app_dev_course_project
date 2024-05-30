import 'package:flutter/material.dart';
import '../models/category.dart';
import '../services/api_service.dart';

class CategoryProvider with ChangeNotifier {
  List<Category> _categories = [];
  bool _isLoading = false;

  List<Category> get categories => _categories;
  bool get isLoading => _isLoading;

  void fetchCategories() async {
    _isLoading = true;
    notifyListeners();

    try {
      List<Category>? fetchedCategories = await ApiService().fetchCategories();
      if (fetchedCategories != null) {
        _categories = fetchedCategories;
      } else {
        throw Exception('Fetched categories is null');
      }
    } catch (error) {
      print("Failed to fetch categories: $error");
    }

    _isLoading = false;
    notifyListeners();
  }
}

class Category {
  final String name;
  final int id;

  Category({required this.id, required this.name});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
    );
  }
}

class ApiService {
  // Dummy implementation for demonstration purposes.
  Future<List<Category>> fetchCategories() async {
    // Simulating API call delay with Future.delayed
    await Future.delayed(Duration(seconds: 2));

    // Returning dummy list of categories
    return [
      Category(id: 1, name: 'Category 1'),
      Category(id: 2, name: 'Category 2'),
      Category(id: 3, name: 'Category 3'),
    ];
  }
}
