import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;

/// A simple logging interceptor that uses Dart's built-in print function.
class ServiceLoggingInterceptor implements Interceptor {
  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
      Chain<BodyType> chain) async {
    final Request request = chain.request;

    // --- 1. Log Request (No Change Needed) ---
    print('==================== REQUEST START ====================');
    print('--> ${request.method} ${request.url}');
    
    final http.BaseRequest baseRequest = await request.toBaseRequest();
    
    // Print Headers
    if (baseRequest.headers.isNotEmpty) {
      print('Headers:');
      baseRequest.headers.forEach((k, v) => print('   $k: $v'));
    }

    // Print Body
    if (baseRequest is http.Request && baseRequest.body.isNotEmpty) {
      print('Body:');
      print(baseRequest.body);
    }
    print('--> REQUEST END');
    

    // --- 2. Proceed to get Response ---
    final Stopwatch stopWatch = Stopwatch()..start();
    final Response<BodyType> response = await chain.proceed(request);
    stopWatch.stop();

    // --- 3. Log Response (Changes Applied Here) ---
    print('==================== RESPONSE START ===================');
    print(
      '<-- ${response.statusCode} ${response.base.reasonPhrase} ${request.method} ${request.url} (${stopWatch.elapsedMilliseconds}ms)',
    );
    
    // Print Headers
    if (response.headers.isNotEmpty) {
      print('Headers:');
      response.headers.forEach((k, v) => print('   $k: $v'));
    }
    
    // 💡 RAW BODY FIX: Access the underlying http.Response for the raw string body
    if (response.base is http.Response) {
      final http.Response httpResponse = response.base as http.Response;
      if (httpResponse.body.isNotEmpty) {
        print('Response RAW Body:');
        // This gives you the original JSON/String before conversion.
        print(httpResponse.body); 
      }
    } else {
      // For streaming responses or other base types, print the converted body as a fallback
      if (response.body != null) {
        print('Response Converted Body:');
        print(response.body);
      }
    }
    
    print('==================== RESPONSE END =====================');

    return response;
  }
}