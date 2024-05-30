import 'package:flutter/material.dart';
import 'package:mobile_application_development_course_project/lib/providers/category_provider.dart';
// ignore: unused_import
import '../models/category.dart';

class CategoryDetailScreen extends StatelessWidget {
  final Category? category;

  CategoryDetailScreen({this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category?.name ?? 'No Name')),
      body: Center(
        child: Hero(
          tag: 'category_${category?.id ?? 'unknown'}',
          child: Text(
            'Category Details for ${category?.name ?? 'No Name'}',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
