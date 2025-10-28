import 'package:flutter/material.dart';
import 'package:news/models/artical_model.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articles});
  final Articalmodel articles;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // NavigatorPush(context, ArticleWebView(url: articles.url));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              articles.image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/NotFound.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),

          SizedBox(height: 12),
          Text(
            articles.title,
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 7),
          Text(
            articles.subTitle,
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
