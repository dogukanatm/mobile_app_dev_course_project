import 'package:flutter/material.dart';
// ignore: unused_import
import '../models/category.dart';
// ignore: unused_import
import '../services/api_service.dart';

class CategoryProvider with ChangeNotifier {
  List<Category> _categories = [];
  bool _isLoading = false;

  List<Category> get categories => _categories;
  bool get isLoading => _isLoading;

  void fetchCategories() async {
    _isLoading = true;
    notifyListeners();

    _categories = await ApiService().fetchCategories();

    _isLoading = false;
    notifyListeners();
  }
}

class Category {
  String? get name => null;

  get id => null;
}

class ApiService {
  fetchCategories() {}
}
