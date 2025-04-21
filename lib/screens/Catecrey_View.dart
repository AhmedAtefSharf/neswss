import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/news_lis_view_bulder.dart' show NewsLisViewBulder;

class CategreyView extends StatelessWidget {
   CategreyView({super.key, required this.caregory});
  final String caregory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsLisViewBulder(category: caregory,),
    );
  }
}
