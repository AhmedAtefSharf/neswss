 class ArticleModel {
  final String? image;
  final String title;
  final String? supTitle;

  ArticleModel({
    required this.image,
    required this.title,
    required this.supTitle,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json["title"],
      supTitle: json["description"],
    );
  }
}
