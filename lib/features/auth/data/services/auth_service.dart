import 'package:chopper/chopper.dart';
import 'package:yinni_mobile/features/auth/data/models/sign_in_api_response.dart';
import 'package:yinni_mobile/features/auth/data/models/sign_up_api_response.dart';

part 'auth_service.chopper.dart';

@ChopperApi(baseUrl: '/auth/v1')
abstract class AuthService extends ChopperService {
  static AuthService create([ChopperClient? client]) => _$AuthService(client);

  @Post(path: '/sign-in')
  Future<Response<SignInApiResponse>> signIn(@Body() Map<String, dynamic> body);

  @Post(path: '/sign-up')
  Future<Response<SignUpApiResponse>> signUp(@Body() Map<String, dynamic> body);
}
