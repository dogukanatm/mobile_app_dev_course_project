import 'package:flutter/material.dart';
import 'package:mobile_application_development_course_project/lib/providers/category_provider.dart';
import 'package:mobile_application_development_course_project/lib/screens/home_screen.dart';
import 'package:provider/provider.dart';
// ignore: unused_import
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoryProvider()..fetchCategories(),
      child: MaterialApp(
        title: 'Mobile Application Development Course Project',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
