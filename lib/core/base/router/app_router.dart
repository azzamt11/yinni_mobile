import 'package:auto_route/auto_route.dart';
import 'package:yinni_mobile/features/initial/presentation/screens/initial_screen.dart';
import 'package:yinni_mobile/core/common/screens/empty_screen.dart';
import 'package:yinni_mobile/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:yinni_mobile/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:yinni_mobile/features/main/presentation/screens/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
      AutoRoute(
        page: InitialRoute.page,
        path: '/',
        initial: true,
      ),

      AutoRoute(
        page: HomeRoute.page,
        path: '/home',
      ),

      AutoRoute(
        page: SignInRoute.page,
        path: '/sign-in',
      ),

      AutoRoute(
        page: SignUpRoute.page,
        path: '/sign-up',
      ),

      AutoRoute(
        page: EmptyRoute.page,
        path: '/empty',
      ),

      // AutoRoute(
      //   page: SignUpRoute.page,
      //   path: '/sign-up',
      // ),
  ];
}