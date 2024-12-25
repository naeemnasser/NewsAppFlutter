import 'package:dio/dio.dart';
import 'package:news_app/moduls/articlemodel.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=b79421ff83db47c5835f9ccd3b4fb23b&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articMod = ArticleModel.fromJson(article);
        articlesList.add(articMod);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
