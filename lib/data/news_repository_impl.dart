import 'package:news_application/data/news_repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:news_application/models/responses/articles_response.dart';

class NewsRepositoryImpl implements INewsRepository {
  @override
  Future<ArticlesResponse> getAllNews() async {
    var url = Uri.parse('https://newsapi.org/v2/everything?q=bitcoin&apiKey=e735c07284904c5fbec702d3808501ab');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      return ArticlesResponse.fromJson(jsonResponse);
    } else {
      throw Exception('error de conexión');
    }
  }
}
