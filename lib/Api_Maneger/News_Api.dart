import 'package:dio/dio.dart';
import '../models/article_model.dart';

class NewsApi {
  final Dio dio;

  NewsApi(this.dio);

  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try {
      final response = await dio.get(
        'https://newsapi.org/v2/top-headlines',
        queryParameters: {
          'apiKey': '19bc357019ba49899d91a885efe378eb',
          'category': category,
          'country': 'us',
        },
      );
      print(response.data);
      List<dynamic> articles = response.data['articles'];

      return articles
          .map((article) => ArticleModel.fromJson(article))
          .toList();
    } catch (e) {
      print('Error fetching news: $e');
      rethrow;
    }
  }
}
