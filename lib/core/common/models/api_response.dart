class ApiResponse {

  String? message;
  int code;

  ApiResponse({
    required this.code,
    required this.message
  });

  factory ApiResponse.fromResponse(int code, String? message) {
    return ApiResponse(
      code: code, 
      message: message
    );
  }
}