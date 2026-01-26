import 'dart:math';

import 'package:yinni_mobile/core/base/router/app_router.dart';
import 'package:yinni_mobile/features/initial/presentation/blocs/initial_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';


@RoutePage()
class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  late final PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(); 
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return BlocProvider<InitialCubit>(
      create: (context) => InitialCubit()..initialize(),
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return BlocListener<InitialCubit, InitialState>(
              listenWhen: (previous, current) => 
                previous.showingBanner != current.showingBanner 
                || previous.page != current.page
                || previous.redirecting != current.redirecting,
              listener: (context, state) async {
                if (state.showingBanner ?? false) {
                  await showGeneralDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierLabel: "Banner Dialog",
                    transitionDuration: const Duration(milliseconds: 600),
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return Material(
                        color: Colors.transparent,
                        child: SizedBox(
                          width: min(0.85 * constraints.maxWidth, 400),
                          height: min(0.85 * constraints.maxWidth, 400) * 1.2 + 90,
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  width: min(0.85 * constraints.maxWidth, 400),
                                  height: min(0.85 * constraints.maxWidth, 400) * 1.2 + 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: GestureDetector(
                                          onTap: () => context.router.pop(),
                                          child: Container(
                                            margin: const EdgeInsets.all(8),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Colors.black45,
                                            ),
                                            child: const Center(
                                              child: Text("X", style: TextStyle(color: Colors.white, fontSize: 18)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'assets/features/initial/initial_content_dummy.png',
                                          width: min(0.85 * constraints.maxWidth, 400) - 20,
                                          height: min(0.85 * constraints.maxWidth, 400) * 1.2 - 20,
                                          fit: BoxFit.cover
                                        )
                                      )
                                    ], 
                                  )
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    transitionBuilder: (context, animation, secondaryAnimation, child) {
                      final slideAnimation = Tween<Offset>(
                        begin: const Offset(0, 1),
                        end: Offset.zero,
                      ).animate(
                        CurvedAnimation(
                          parent: animation,
                          curve: Curves.easeOutBack, 
                        ),
                      );
                      
                      final scaleAnimation = Tween<double>(
                        begin: 0.9,
                        end: 1.0,
                      ).animate(animation);

                      return SlideTransition(
                        position: slideAnimation,
                        child: ScaleTransition(
                          scale: scaleAnimation,
                          child: child,
                        ),
                      );
                    },
                  );
                }

                if(state.page == 1) {
                  if (controller.hasClients) {
                    controller.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeOut,
                    );
                  }
                }

                if((state.redirecting ?? false) && context.mounted) {
                  context.router.push(HomeRoute());
                }
              },
              child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/features/initial/background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 100),
                        width: min(constraints.maxWidth * 0.4, 400),
                        height: min(constraints.maxWidth * 0.4, 400) * 0.45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/features/initial/yinni_mobile.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 100),
                        height: min(constraints.maxWidth, 400),
                        width: min(constraints.maxWidth, 400),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/features/initial/bmt_green.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: min(0.4 * constraints.maxHeight, 300),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: PageView(
                                physics: NeverScrollableScrollPhysics(),
                                controller: controller,
                                children: [
                                  SizedBox(
                                    width: constraints.maxWidth,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Selamat Datang di",
                                          style: textTheme.headlineSmall?.copyWith(color: const Color(0xFFC9AA50)),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "Yinni Mobile Travel",
                                          style: textTheme.headlineLarge?.copyWith(color: const Color(0xFF2E9E39), height: 1.5),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    width: constraints.maxWidth,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Yuks Bestie,",
                                          style: textTheme.headlineLarge?.copyWith(color: const Color(0xFFC9AA50), height: 1.5),
                                          textAlign: TextAlign.center,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: textTheme.headlineSmall,
                                            children: [
                                              TextSpan(
                                                text: "Jalan-jalan lagi \nBersama ",
                                                style: TextStyle(color: Colors.black),
                                              ),
                                              TextSpan(
                                                text: "Yinni Mobile Travel",
                                                style: TextStyle(color: Color(0xFF2E9E39)),
                                              )
                                            ]
                                          ),
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      context.read<InitialCubit>().next();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFC9AA50),
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 8),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      overlayColor: Colors.white,
                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    ),
                                    child: Text(
                                      "LANJUT",
                                      style: textTheme.titleSmall,
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Text("Follow us", style: textTheme.bodyMedium?.copyWith(color: Colors.black)),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 3,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          debugPrint("TikTok icon tapped");
                                        },
                                        child: Image.asset(
                                          'assets/features/initial/tiktok.png',
                                          width: 22,
                                          height: 22,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          debugPrint("Instagram icon tapped");
                                        },
                                        child: Image.asset(
                                          'assets/features/initial/instagram.png',
                                          width: 22,
                                          height: 22,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          debugPrint("Facebook icon tapped");
                                        },
                                        child: Image.asset(
                                          'assets/features/initial/facebook.png',
                                          width: 22,
                                          height: 22,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          debugPrint("YouTube icon tapped");
                                        },
                                        child: Image.asset(
                                          'assets/features/initial/youtube.png',
                                          width: 22,
                                          height: 22,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 6),
                                  Container(width: 100, height: 1, color: Color(0xFFC9AA50)),
                                  SizedBox(height: 4),
                                  Image.asset(
                                    'assets/features/initial/sisko.png',
                                    width: 100,
                                    height: 30,
                                  ),
                                  SizedBox(height: 20)
                                ],
                              ),
                            )
                          ],
                        )
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5, left: 5),
                        child: Text("Version 1.0.0 2025", style: TextStyle(color: Colors.grey, fontSize: 12)),
                      )
                    )
                  ],
                )
              )
            );
          }
        )
      ),
    );
  }
}