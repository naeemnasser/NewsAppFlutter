import 'package:flutter/material.dart';
import 'package:news_app/moduls/categModel.dart';
import 'package:news_app/moduls/category_card.dart';

// ignore: camel_case_types
class categriesListView extends StatelessWidget {
  categriesListView({
    super.key,
  });
  final List<Categmodel> categries = const [
    Categmodel(image: 'assets/health.avif', categName: 'health'),
    Categmodel(image: 'assets/general.jpg', categName: 'general'),
    Categmodel(image: 'assets/Business.jpg', categName: 'business'),
    Categmodel(image: 'assets/sports.jpg.jpg', categName: 'sports'),
    Categmodel(
        image: 'assets/entertaiment.jpg.avif', categName: 'entertainment'),
    Categmodel(image: 'assets/science.avif', categName: 'science'),
    Categmodel(image: 'assets/technology.jpeg', categName: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categries.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              categary: categries[index],
            );
          }),
    );
  }
}
