import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/categry_listview.dart' show CategryListview;
import '../Widgets/new_Post_listview.dart';
import '../Widgets/news_Post.dart';
import '../Widgets/news_lis_view_bulder.dart';

class home extends StatelessWidget {
  static const String routName = "Home";

  const home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(child: Text("News")),
            Text("cloud", style: TextStyle(color: Colors.amberAccent)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            CategryListview(),
            SizedBox(height: 20),
            Expanded(child: NewsLisViewBulder(category: "general",)),
          ],
        ),
      ),
    );
  }
}
