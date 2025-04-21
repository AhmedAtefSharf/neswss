import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/CategreyModel.dart';
import '../screens/Catecrey_View.dart' show CategreyView;

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key, required this.categrey});

  Categreymodel categrey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategreyView(caregory: categrey.CategreyName,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 17),
        child: Container(
          height: 90,
          width: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(categrey.image),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              categrey.CategreyName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
