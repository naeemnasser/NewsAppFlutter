import 'package:flutter/material.dart';
import 'package:news_app/moduls/articlemodel.dart';
import 'package:news_app/widget/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({
    super.key,
    required this.articles,
    required String category,
  });
  // final String category;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTile(
            artcModel: articles[index],
          ),
        );
      }),
    );
  }
}
