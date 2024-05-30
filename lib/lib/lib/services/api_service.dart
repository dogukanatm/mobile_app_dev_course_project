import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/category.dart';

class ApiService {
  static const String apiUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<Category>> fetchCategories() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Category.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
