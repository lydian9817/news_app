import 'package:flutter/material.dart';
import 'package:news_application/models/responses/articles_response.dart';
import 'package:news_application/screens/home_page_screen/home_page_controller.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeScreenController controller = HomeScreenController();
  late Future<ArticlesResponse> futureArticlesResponse;

  @override
  void initState(){
    super.initState();
    futureArticlesResponse = controller.getAllNews();
  }

  @override
  Widget build(BuildContext context){
    return FutureBuilder<ArticlesResponse>(
      future: futureArticlesResponse,
      builder: (context, snapshot){

        Widget resultado;
        if(snapshot.hasData){
          resultado = ListView(
            children: [
              for(var article in snapshot.data!.articles)
                Card(
                  child: Text(article.author as String),
                )
            ],
          );
        } else if(snapshot.hasError) {
          resultado = Text('${snapshot.error}');
        } else {
          resultado = const CircularProgressIndicator();
        }
        return resultado;
      },
    );
  }
}