class Articalmodel {
  final String image;
  final String title;
  final String subTitle;
  final String url;
  Articalmodel({
    required this.url,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  factory Articalmodel.fromJson(Map<String, dynamic> json) {
    return Articalmodel(
      url: json['url'] ?? '',
      image: json['urlToImage'] ?? '',
      title: json['title'] ?? '',
      subTitle: json['description'] ?? '',
    );
  }
}
