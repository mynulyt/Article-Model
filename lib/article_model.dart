class ArticleModel {
  String? AuthorID;
  String? ID;
  String? name;
  String? detailes;
  ArticleModel(Map json) {
    AuthorID = json["ip"].toString();
    ID = json["city"];
    name = json["region"];
    detailes = json["country"];
  }
}
