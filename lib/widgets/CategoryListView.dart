import 'package:flutter/material.dart';
import 'package:news/models/CategoryListModel.dart';
import 'package:news/widgets/CategoryCard.dart';

// ignore: must_be_immutable
class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});
  List<Categorylistmodel> categotyItem = [
    Categorylistmodel(
      categoryName: 'Entertaiment',
      image: 'assets/entertaiment.jpeg',
    ),
    Categorylistmodel(categoryName: 'Business', image: 'assets/business.jpeg'),
    Categorylistmodel(categoryName: 'General', image: 'assets/general.jpeg'),
    Categorylistmodel(categoryName: 'Health', image: 'assets/health.jpeg'),
    Categorylistmodel(categoryName: 'Science', image: 'assets/science.jpeg'),
    Categorylistmodel(categoryName: 'Sports', image: 'assets/sports.jpeg'),
    Categorylistmodel(
      categoryName: 'Technology',
      image: 'assets/technology.jpeg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: categotyItem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) =>
                CategoryCard(categorylistmodel: categotyItem[index]),
      ),
    );
  }
}
