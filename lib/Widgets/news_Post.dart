import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newss/models/article_model.dart';

class NewsPost extends StatelessWidget {
  const NewsPost({super.key, required this.articleModel});
  final ArticleModel articleModel ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          articleModel.image!,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          articleModel.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          articleModel.supTitle?? "",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
