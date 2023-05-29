

import 'package:news_application/models/article.dart';

class ArticlesResponse {
  final String status;
  final int totalResults;
  final List<Article> articles;

  ArticlesResponse(
      {required this.status,
      required this.totalResults,
      required this.articles});

  factory ArticlesResponse.fromJson(Map<String,dynamic> json) {
    var articlesObjsJson = json['articles'] as List;

    List<Article> articles = articlesObjsJson.map ((articleJson) => Article.fromJson(articleJson)).toList();

    return ArticlesResponse(
        status: json['status'],
        totalResults: json['totalResults'],
        articles: articles
        );
  }

  String getStatus() {
    return status;
  }

  int getTotalResults() {
    return totalResults;
  }

  List<Article> getArticles() {
    return articles;
  }
}
