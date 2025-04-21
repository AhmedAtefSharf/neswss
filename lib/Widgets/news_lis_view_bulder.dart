import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../Api_Maneger/News_Api.dart' show NewsApi;
import '../models/article_model.dart' show ArticleModel;
import 'new_Post_listview.dart' show NewPostListview;
//cached network image
class NewsLisViewBulder extends StatefulWidget {
  final String category ;

  const NewsLisViewBulder({super.key, required this.category});
  @override
  State<NewsLisViewBulder> createState() => _NewsLisViewBulderState();
}

class _NewsLisViewBulderState extends State<NewsLisViewBulder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsApi(Dio()).getTopHeadLines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator()); // لو البيانات لسه محملة
        } else if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}")); // لو في مشكلة في تحميل البيانات
        } else if (snapshot.hasData) {
          if (snapshot.data!.isEmpty) {
            return Center(child: Text("No articles found")); // لو مفيش بيانات
          }
          return NewPostListview(articles: snapshot.data!); // عرض الأخبار لو البيانات موجودة
        } else {
          return Center(child: Text("No data found"));
        }
      },
    );
  }
}
