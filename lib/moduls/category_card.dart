import 'package:flutter/material.dart';
import 'package:news_app/moduls/categModel.dart';
import 'package:news_app/screans/categoryView.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categary});
  final Categmodel categary;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return CategoryView(
              category: categary.categName,
            );
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 130,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(categary.image)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: Text(
            categary.categName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )),
        ),
      ),
    );
  }
}
