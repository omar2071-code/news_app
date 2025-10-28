import 'package:flutter/material.dart';

import 'package:news/views/NewsView.dart';

void main() {
  // NewServices(Dio()).getNews();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Newsview());
  }
}
