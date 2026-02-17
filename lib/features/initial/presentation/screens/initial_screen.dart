import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yinni_mobile/core/base/di/dependency_injection.dart';
import 'package:yinni_mobile/core/base/router/app_router.dart';
import 'package:yinni_mobile/features/auth/domain/usecase/auth_usecase.dart';
import 'package:yinni_mobile/features/initial/presentation/widgets/onboarding_drawer.dart';

@RoutePage()
class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> with TickerProviderStateMixin {
  late final AuthUsecase _authUsecase;
  late AnimationController _drawerController;
  late PageController _pageController;
  late List<AnimationController> _progressControllers;
  
  bool _drawerShown = false;
  int _currentPage = 0;

  final int pageCount = 3;
  final Duration progressDuration = const Duration(seconds: 5);

  @override
  void initState() {
    super.initState();

    _authUsecase = injector.get<AuthUsecase>();
    _pageController = PageController();

    _progressControllers = List.generate(
      pageCount,
      (index) => AnimationController(
        vsync: this,
        duration: progressDuration,
      )..addStatusListener((status) => _onProgressStatus(index, status)),
    );

    _drawerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _redirectIfAuthenticated();
    _startProgress(0);
  }

  Future<void> _redirectIfAuthenticated() async {
    await _authUsecase.initializeToken();
    if (!mounted) return;

    if ((_authUsecase.cachedToken ?? '').isNotEmpty) {
      context.router.replaceAll([const MainRoute()]);
      return;
    }

    final hasOpenedBefore = await _authUsecase.hasOpenedBefore();
    if (!mounted) return;

    if (hasOpenedBefore) {
      context.router.replaceAll([const SignInRoute()]);
      return;
    }

    await _authUsecase.markOpenedBefore();
  }

  void _startProgress(int index) {
    for (int i = 0; i < pageCount; i++) {
      if (i < index) {
        _progressControllers[i].value = 1.0;
      } else if (i > index) {
        _progressControllers[i].value = 0.0;
      } else {
        _progressControllers[i]
          ..reset()
          ..forward();
      }
    }

  }

  void _onProgressStatus(int index, AnimationStatus status) {
    if (status != AnimationStatus.completed || index != _currentPage) return;

    if (index < pageCount - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
      return;
    }

    if (!_drawerShown) {
      _drawerShown = true;
      _drawerController.forward();
    }
  }

  void _onPageChanged(int index) {
    if (index < _currentPage) {
      _progressControllers[index].reset();
    }

    _currentPage = index;
    _startProgress(index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    for (final c in _progressControllers) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: [
              Image.asset(
                'assets/features/initial/poster_1.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Image.asset(
                'assets/features/initial/poster_2.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Image.asset(
                'assets/features/initial/poster_3.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: _indicator(),
              ),
            ),
          ),
          OnboardingDrawer(animation: _drawerController),
        ],
      ),
    );
  }

  Widget _indicator() {
    return Row(
      children: List.generate(pageCount, (index) {
        return Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            height: 4,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(2),
            ),
            child: AnimatedBuilder(
              animation: _progressControllers[index],
              builder: (context, _) {
                return FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: _progressControllers[index].value,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      }),
    );
  }
}
