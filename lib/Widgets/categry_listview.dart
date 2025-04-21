import 'package:flutter/cupertino.dart';

import '../models/CategreyModel.dart';
import 'categry_card.dart';


class CategryListview extends StatelessWidget {
  CategryListview({super.key});

  List<Categreymodel> categres = [
    Categreymodel(
      image: "assets/images/wp2019326.webp",
      CategreyName: "Business",
    ),
    Categreymodel(
      image: "assets/images/health-pictures-lxswxnj912ggs6ky.jpg",
      CategreyName: "Health",
    ),
    Categreymodel(image: "assets/images/OIP.jpg", CategreyName: "Sorts"),
    Categreymodel(
      image: "assets/images/OIP (1).jpg",
      CategreyName: "Entertainment",
    ),
    Categreymodel(
      image:
          "assets/images/science-background-illustration-scientific-design-flasks-glass-and-chemistry-physics-elements-generative-ai-photo.jpeg",
      CategreyName: "Scince",
    ),

    Categreymodel(
      image: "assets/images/general-1201765.jpg",
      CategreyName: "General",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categres.length,
        itemBuilder: (context, index) {
          return CategoryCard(categrey: categres[index]);
        },
      ),
    );
  }
}
