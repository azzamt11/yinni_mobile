class Configs {

  static final String baseUrl = "http://192.168.100.249:8088"; //currently still in local
  static final String apiKey = "no_key";

  String? getUrl(String? path) => path != null ? baseUrl + path : null;

}