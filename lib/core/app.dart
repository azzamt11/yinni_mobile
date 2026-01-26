import 'package:yinni_mobile/core/base/configs/theme.dart';
import 'package:yinni_mobile/core/base/router/app_router.dart';
import 'package:flutter/material.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return /*MultiBlocProvider(
      providers: [
        BlocProvider<MainBloc>(
          create: (context) => MainBloc(
              di.sl<AuthRepository>(),
              PageController(),
          ),
        ),
      ],
      child: */ SafeArea(
        top: false,
        child: MaterialApp.router(
          routerConfig: appRouter.config(),
          theme: buildTheme(),
          debugShowCheckedModeBanner: false,
        )
      );
    //);
  }
}