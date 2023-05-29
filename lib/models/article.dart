import 'package:news_application/models/source.dart';

class Article {
  Source? source = Source(id: 'no id', name: 'no name');
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Article({
    required this.source, 
    required this.author, 
    required this.title, 
    required this.description, 
    required this.url, 
    required this.urlToImage, 
    required this.publishedAt, 
    required this.content
    }
  );

  factory Article.fromJson(Map<String,dynamic> json){
    Source source = Source(id: 'no id', name: 'no name');
    var autor = 'no author';
    var urlimagen = 'no url to image';
    if(json['source'] != null){
      source = Source.fromJson(json['source']);
    }
    if(json['author'] != null){
      autor = json['author'] as String;
    }
    if(json['urlToImage'] != null){
      urlimagen = json['urlToImage'] as String;
    }
    return Article(
      source: source,
      author: autor,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: urlimagen,
      publishedAt: json['publishedAt'] as String,
      content: json['content'] as String,
    );
  }


  Source? getSource(){
  return source;
  }

  String? getAuthor(){
    return author;
  }
  String? getTitle(){
    return title;
  }
  String? getDescription(){
    return description;
  }
  String? getUrl(){
    return url;
  }
  String? getUrlToImage(){
    return urlToImage;
  }
  String? getPublishedAt(){
    return publishedAt;
  }
  String? getContent(){
    return content;
  }
}
