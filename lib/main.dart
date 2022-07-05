import 'package:api_rest_flutter/views/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Api Rest Flutter',
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: HomePage(),
    );
  }
}