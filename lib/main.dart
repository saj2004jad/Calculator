import 'package:flutter/material.dart';
import 'package:flutter_application_calculator/home_page.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Banty'),
      home: Homepage(),
    );
  }
}








  