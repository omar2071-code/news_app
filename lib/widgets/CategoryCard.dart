import 'package:flutter/material.dart';
import 'package:news/models/CategoryListModel.dart';
import 'package:news/views/CategoryView.dart';
import 'package:news/widgets/comopnents.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key, required this.categorylistmodel});
  final Categorylistmodel categorylistmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigatorPush(
          context,
          CategoryView(categoryName: categorylistmodel.categoryName),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(categorylistmodel.image),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              categorylistmodel.categoryName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
