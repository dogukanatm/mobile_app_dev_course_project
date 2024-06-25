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
      print("Fetched categories in provider: $fetchedCategories");
      // ignore: unnecessary_null_comparison
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
