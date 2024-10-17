import 'dart:convert';

void main() {
  String rowData = '''
  {
    "ip": "182.48.82.31",
    "city": "Dhaka",
    "region": "Dhaka",
    "country": "BD",
    "loc": "23.7104,90.4074",
    "org": "AS58715 EARTH TELECOMMUNICATION (Pvt) LTD.",
    "postal": "1000",
    "timezone": "Asia/Dhaka",
    "readme": "https:ipinfo.io missingauth"
  }
  ''';

  // Create an ArticleModel object from the JSON data
  ArticleModel article = ArticleModel.fromJson(jsonDecode(rowData));

  // Print the parsed information
  print('IP Address: ${article.ip}');
  print('City: ${article.city}');
  print('Region: ${article.region}');
  print('Country: ${article.country}');
  print('Location: ${article.loc}');
  print('Organization: ${article.org}');
  print('Postal Code: ${article.postal}');
  print('Time Zone: ${article.timezone}');
}

class ArticleModel {
  String? ip;
  String? city;
  String? region;
  String? country;
  String? loc;
  String? org;
  String? postal;
  String? timezone;

  // Constructor to initialize the fields from a JSON map
  ArticleModel.fromJson(Map<String, dynamic> json) {
    ip = json["ip"];
    city = json["city"];
    region = json["region"];
    country = json["country"];
    loc = json["loc"];
    org = json["org"];
    postal = json["postal"];
    timezone = json["timezone"];
  }
}
