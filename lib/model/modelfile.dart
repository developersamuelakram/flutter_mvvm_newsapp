class ModelNewsArticle{

  String title;
  String publishedAt;
  String description;
  String url;
  String urlToImage;

  ModelNewsArticle({this.title, this.publishedAt, this.description,
      this.url, this.urlToImage});



  factory ModelNewsArticle.fromJson(Map<String, dynamic> json) {

    return ModelNewsArticle(

      title: json['title'],
      description: json['description'],
      urlToImage: json['urlToImage'],
      url: json['url'],
      publishedAt: json['publishedAt']



    );



  }
}