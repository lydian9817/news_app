import 'package:news_application/models/responses/articles_response.dart';

abstract class INewsRepository {
  
  Future <ArticlesResponse> getAllNews();
}