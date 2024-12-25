import 'package:flutter/material.dart';
import 'package:news_app/widget/categListView.dart';
import 'package:news_app/widget/newsListViewBuilder.dart';

class Newsview extends StatelessWidget {
  const Newsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Color.fromARGB(255, 224, 204, 17),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: categriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 35,
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(bottom: 22),
              sliver: newsListViewBuilder(
                category: 'general',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
