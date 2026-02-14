import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yinni_mobile/core/base/di/dependency_injection.dart';
import 'package:yinni_mobile/core/base/router/app_router.dart';
import 'package:yinni_mobile/core/repositories/cache/volume/image_cache_manager.dart';
import 'package:yinni_mobile/features/auth/domain/usecase/auth_usecase.dart';
import 'package:yinni_mobile/features/main/presentation/screens/tabs/home_tab_screen.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final AuthUsecase _authUsecase = injector.get<AuthUsecase>();
  final ImageUrlCacheManager _imageCacheManager = injector.get<ImageUrlCacheManager>();

  int _selectedBottomNav = 0;
  bool _isLoggingOut = false;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _selectedBottomNav,
        children: const [
          HomeTabScreen(),
          _PlaceholderTab(label: "Feed"),
          _PlaceholderTab(label: "Promo"),
          _PlaceholderTab(label: "Transaksi"),
          _PlaceholderTab(label: "Akun"),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight + 5,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedBottomNav,
          onTap: _onBottomNavTap,
          selectedItemColor: t.primaryColor,
          unselectedItemColor: Colors.black54,
          selectedLabelStyle: t.textTheme.bodyMedium?.copyWith(fontSize: 12.5),
          unselectedLabelStyle: t.textTheme.bodySmall,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Buat Kamu"),
            BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline), label: "Feed"),
            BottomNavigationBarItem(icon: Icon(Icons.local_offer_outlined), label: "Promo"),
            BottomNavigationBarItem(icon: Icon(Icons.receipt_long), label: "Transaksi"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Akun"),
          ],
        ),
      ),
    );
  }

  Future<void> _onBottomNavTap(int index) async {
    if (index == 4) {
      await _emergencyLogout();
      return;
    }

    if (!mounted) return;
    setState(() => _selectedBottomNav = index);
  }

  Future<void> _emergencyLogout() async {
    if (_isLoggingOut) return;

    _isLoggingOut = true;
    try {
      await _authUsecase.clearToken();
      await _imageCacheManager.emptyCache();

      if (!mounted) return;
      context.router.replaceAll([const SignInRoute()]);
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        const SnackBar(content: Text('Logout failed. Please try again.')),
      );
    } finally {
      _isLoggingOut = false;
    }
  }
}

class _PlaceholderTab extends StatelessWidget {
  final String label;

  const _PlaceholderTab({required this.label});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          label,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
