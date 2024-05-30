import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile_application_development_course_project/lib/lib/models/category.dart';

class ApiService {
  static const String apiUrl = 'https://example.com/api/categories';

  Future<List<Category>> fetchCategories() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> responseData = json.decode(response.body);
      return responseData.map((json) => Category.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
