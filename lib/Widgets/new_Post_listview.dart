import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newss/models/article_model.dart';

import 'news_Post.dart';

class NewPostListview extends StatelessWidget {
  final List<ArticleModel> articles;

  NewPostListview({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: NewsPost(articleModel: articles[index]),
        );
      },
    );
  }
}

