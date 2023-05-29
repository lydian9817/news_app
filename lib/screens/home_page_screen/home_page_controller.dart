import 'package:news_application/data/news_repository_impl.dart';
import 'package:news_application/models/responses/articles_response.dart';

class HomeScreenController {

  final NewsRepositoryImpl _newsRepo = NewsRepositoryImpl();
  
  Future<ArticlesResponse> getAllNews() {
    return _newsRepo.getAllNews();
  }
}