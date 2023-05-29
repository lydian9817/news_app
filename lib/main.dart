import 'package:flutter/material.dart';
import 'package:news_application/screens/home_page_screen/home_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'News application',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen)
        ),
        home:   const HomePage(),
      ),
    );
  }
}

class AppState extends ChangeNotifier{

}