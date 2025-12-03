import 'package:auto_route/auto_route.dart';
import 'package:bin_mahfudz_mobile/features/initial/presentation/screens/initial_screen.dart';
import 'package:bin_mahfudz_mobile/features/main/presentation/screens/home_screen.dart';

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

      //AutoRoute(
        //page: MainRoute.page,
        //path: '/main',
      //),
  ];
}