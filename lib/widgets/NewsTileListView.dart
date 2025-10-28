import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/services/NewServices.dart';

import 'package:news/models/artical_model.dart';
import 'NewsTile.dart';

class NewsTileListView extends StatelessWidget {
  NewsTileListView({super.key, required this.categoryName});
  final String categoryName;
  Future<List<Articalmodel>> getNewServices() async {
    return await NewServices(Dio()).getTopHeadlinesNews(category: categoryName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getNewServices(),
      builder: (context, snapshot) {
        // نستخدم الكونديشن بيلدر جوا الفيوتشر بيلدر

        return ConditionalBuilder(
          condition: snapshot.hasData && snapshot.data!.isNotEmpty,
          builder: (context) {
            final articles = snapshot.data!;
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Newstile(articles: articles[index]),
                ),
                childCount: articles.length,
              ),
            );
          },
          fallback: (context) {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          },
        );
      },
    );
  }
}
