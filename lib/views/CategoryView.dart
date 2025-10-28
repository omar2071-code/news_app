import 'package:flutter/material.dart';
import 'package:news/widgets/NewsTileListView.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryName)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [NewsTileListView(categoryName: categoryName)],
        ),
      ),
    );
  }
}
