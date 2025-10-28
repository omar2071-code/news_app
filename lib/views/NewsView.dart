import 'package:flutter/material.dart';
import 'package:news/widgets/CategoryListView.dart';
import 'package:news/widgets/NewsTileListView.dart';

class Newsview extends StatefulWidget {
  Newsview({super.key});

  @override
  State<Newsview> createState() => _NewsviewState();
}

class _NewsviewState extends State<Newsview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: RichText(
          text: TextSpan(
            text: 'News',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: ' Cloud',
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            NewsTileListView(categoryName: 'general'),
          ],
        ),
      ),
    );
  }
}
