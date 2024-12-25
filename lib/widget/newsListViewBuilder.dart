import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/moduls/articlemodel.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widget/NewsListView.dart';

class newsListViewBuilder extends StatefulWidget {
  final String category;
  const newsListViewBuilder({
    super.key,
    required this.category,
  });

  @override
  State<newsListViewBuilder> createState() => _newsListViewBuilderState();
}

class _newsListViewBuilderState extends State<newsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getTopHeadlines(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
            category: '',
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(child: Text("Opps!, there was an erorr. ")),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
