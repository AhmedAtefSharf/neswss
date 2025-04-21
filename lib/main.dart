import 'package:flutter/material.dart';
import 'package:newss/screens/home.dart' show home;

import 'Api_Maneger/News_Api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {home.routName: (context) => home()},
      initialRoute: home.routName,
    );
  }
}
