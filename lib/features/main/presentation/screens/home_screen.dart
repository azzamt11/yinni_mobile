import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yinni_mobile/features/main/presentation/blocs/home_cubit.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return BlocProvider<HomeCubit>(
      create: (_) => HomeCubit.create(context),
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/features/auth/bg_splash.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: BlocListener<HomeCubit, HomeState>(
                      listener: (context, state) {
                        if (state is LoadedHomeState) {
                          //do something
                        }
                        if (state is ErrorHomeState) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(state.error.message ?? "Something went wrong")),
                          );
                        }
                      },
                      child: Column(
                        children: [
                          Container()
                        ],
                      )
                    ),
                  )
                )
              ],
            );
          },
        ),
      )
    );
  }
}