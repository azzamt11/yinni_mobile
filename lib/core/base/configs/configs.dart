class Configs {

  static final String baseUrl = "http://76.13.17.200";
  static final String apiKey = "no_key";

  String? getAuthUrl(String? path) => path != null ? "$baseUrl:8000$path" : null;
  String? getProductUrl(String? path) => path != null ? "$baseUrl:8002$path" : null;
  String? getPromptUrl(String? path) => path != null ? "$baseUrl:8003$path" : null;

}