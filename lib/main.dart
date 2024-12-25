import 'package:flutter/material.dart';
import 'package:news_app/screans/newsView.dart';

void main() {
  runApp(const newsApp());
}

// ignore: camel_case_types
class newsApp extends StatelessWidget {
  const newsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Newsview(),
    );
  }
}
