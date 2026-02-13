import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yinni_mobile/core/base/di/dependency_injection.dart';
import 'package:yinni_mobile/core/base/router/app_router.dart';
import 'package:yinni_mobile/core/repositories/cache/volume/image_cache_manager.dart';
import 'package:yinni_mobile/core/common/widgets/app_input_field.dart';
import 'package:yinni_mobile/features/auth/domain/usecase/auth_usecase.dart';
import 'package:yinni_mobile/features/main/presentation/blocs/home_cubit.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _bannerController = PageController();
  int _bannerIndex = 0;
  final ScrollController _scrollController = ScrollController();
  final AuthUsecase _authUsecase = injector.get<AuthUsecase>();
  final ImageUrlCacheManager _imageCacheManager = injector.get<ImageUrlCacheManager>();
  int _selectedBottomNav = 0;
  bool _isLoggingOut = false;

  final List<_QuickItem> _quickItems = const [
    _QuickItem(icon: Icons.account_balance_wallet, label: "\$5"),
    _QuickItem(icon: Icons.payments, label: "\$12"),
    _QuickItem(icon: Icons.confirmation_num, label: "Coupon Check"),
    _QuickItem(icon: Icons.local_shipping, label: "Shipping"),
  ];

  final List<_FeatureItem> _featureItems = const [
    _FeatureItem(icon: "assets/features/home/reactivate.svg", label: "Reactivate"),
    _FeatureItem(icon: "assets/features/home/topup.svg", label: "Top-Up"),
    _FeatureItem(icon: "assets/features/home/mall.svg", label: "Mall"),
    _FeatureItem(icon: "assets/features/home/discount.svg", label: "Discount"),
    _FeatureItem(icon: "assets/features/home/reactivate.svg", label: "Paylater"),
    _FeatureItem(icon: "assets/features/home/reactivate.svg", label: "Cicil Tanpa\nBiaya"),
    _FeatureItem(icon: "assets/features/home/reactivate.svg", label: "GoPay\nLater"),
  ];

  final List<_CardItem> _continueItems = const [
    _CardItem(title: "Balik lihat", subtitle: "Liontin Wanita"),
    _CardItem(title: "Terakhir cek", subtitle: "Buku Kesuksesan"),
    _CardItem(title: "Incaranmu", subtitle: "Secretarial Book"),
    _CardItem(title: "Siap dibeli", subtitle: "Buku Bimbingan"),
  ];

  final List<_ProductItem> _flashItems = const [
    _ProductItem(title: "Pilys Choice", price: "Rp159.800", oldPrice: "Rp479.600"),
    _ProductItem(title: "RGB Disco", price: "Rp63.300", oldPrice: "Rp176.000"),
    _ProductItem(title: "Body Sunscreen", price: "Rp89.000", oldPrice: "Rp139.000"),
  ];

  final List<_GridItem> _gridItems = [];
  int _page = 0;
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _fetchMore();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _bannerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return BlocProvider<HomeCubit>(
      create: (_) => HomeCubit.create(context),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Stack(
                children: [
                  SafeArea(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            _topBar(t),
                            const SizedBox(height: 14),
                            _bannerCarousel(constraints.maxWidth),
                            const SizedBox(height: 10),
                            _quickRow(t),
                            const SizedBox(height: 14),
                            _featureRow(t),
                            const SizedBox(height: 18),
                            _sectionTitle(t, "Lanjut cek ini, yuk"),
                            const SizedBox(height: 10),
                            _continueRow(t),
                            const SizedBox(height: 16),
                            _tabsRow(t),
                            const SizedBox(height: 12),
                            _gridSection(t),
                          ],
                        )
                      ),
                    )
                  )
                ],
              )
            );
          },
        ),
        bottomNavigationBar: _bottomNav(t),
      )
    );
  }

  Widget _topBar(ThemeData t) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Expanded(
            child: const AppInputField(
              hint: "Seacrh",
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              borderRadius: 12,
              enabledBorderColor: Colors.black,
              enabledBorderWidth: 1,
              prefixIcon: Icon(Icons.search, size: 20, color: Colors.black45),
            ),
          ),
          SizedBox(width: 10),
          _iconBadge(
            icon: Icons.chat_bubble_outline,
            count: 3,
          ),
          _iconButton(Icons.shopping_cart_outlined),
        ],
      ),
    );
  }

  Widget _bannerCarousel(double width) {
    final bannerHeight = width * 0.46;
    return Column(
      children: [
        SizedBox(
          height: bannerHeight,
          child: PageView(
            controller: _bannerController,
            onPageChanged: (index) => setState(() => _bannerIndex = index),
            children: [
              _bannerCard(
                title: "Top Up Diamonds",
                subtitle: "29% Diamonds",
                bg: const Color.fromARGB(255, 20, 111, 209),
              ),
              _bannerCard(
                title: "The Hotest Selling Promo!",
                subtitle: "Diskon s.d. 70%",
                bg: const Color.fromARGB(255, 233, 109, 120),
              ),
              _bannerCard(
                title: "Gratis Ongkir\nSepuasnya",
                subtitle: "Min. belanja Rp25rb",
                bg: const Color(0xFF97D9C2),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            final active = index == _bannerIndex;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(horizontal: 3),
              height: 6,
              width: active ? 18 : 6,
              decoration: BoxDecoration(
                color: active ? Colors.white : Colors.white54,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget _bannerCard({
    required String title,
    required String subtitle,
    required Color bg,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/features/home/background.jpg"),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -20,
            bottom: -10,
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.3),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _quickRow(ThemeData t) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _quickItems.map((item) {
          return _quickChip(t, item);
        }).toList(),
      ),
    );
  }

  Widget _quickChip(ThemeData t, _QuickItem item) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              t.primaryColor,
              t.cardColor
            ],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item.icon, size: 16, color: Colors.white),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                item.label,
                overflow: TextOverflow.ellipsis,
                style: t.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _featureRow(ThemeData t) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _featureItems.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final item = _featureItems[index];
          return Column(
            children: [
              Container(
                height: 58,
                width: 58,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: SvgPicture.asset(
                    item.icon,
                    fit: BoxFit.contain,
                  ),
                )
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: 70,
                child: Text(
                  item.label,
                  textAlign: TextAlign.center,
                  style: t.textTheme.labelSmall?.copyWith(
                    color: Colors.black87,
                    height: 1.1,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _sectionTitle(ThemeData t, String text) {
    return Text(
      text,
      style: t.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _continueRow(ThemeData t) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _continueItems.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final item = _continueItems[index];
          return Container(
            width: 140,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  offset: Offset(0, 6),
                  color: Color(0x14000000),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F2F6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(Icons.image, color: Colors.black26),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  item.title,
                  style: t.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
                ),
                Text(
                  item.subtitle,
                  style: t.textTheme.labelMedium?.copyWith(color: Colors.black54),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _tabsRow(ThemeData t) {
    return Row(
      children: [
        _tabChip(t, "For Abdullah", selected: true),
        const SizedBox(width: 10),
        _tabChip(t, "Mall"),
        const SizedBox(width: 10),
        _tabChip(t, "Elektronik"),
        const SizedBox(width: 10),
        _tabChip(t, "Handphone & Gadget"),
      ],
    );
  }

  Widget _tabChip(ThemeData t, String label, {bool selected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFE6F6EF) : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: selected ? const Color(0xFF27AE60) : const Color(0xFFE6EAF0),
        ),
      ),
      child: Text(
        label,
        style: t.textTheme.labelLarge?.copyWith(
          color: selected ? const Color(0xFF27AE60) : Colors.black87,
          fontWeight: selected ? FontWeight.w700 : FontWeight.w600,
        ),
      ),
    );
  }

  Widget _flashSale(ThemeData t, double width) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Flash Sale",
                style: t.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE3E3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "02:14:07",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFE74C3C),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFEDED),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "60%",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFE74C3C),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: width * 0.56,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: _flashItems.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final item = _flashItems[index];
                return _flashCard(t, item);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _flashCard(ThemeData t, _ProductItem item) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF6F6),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Icon(Icons.image, color: Colors.black26),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item.title,
            style: t.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            item.price,
            style: t.textTheme.labelLarge?.copyWith(
              color: const Color(0xFFE74C3C),
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            item.oldPrice,
            style: t.textTheme.labelSmall?.copyWith(
              color: Colors.black38,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomNav(ThemeData t) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedBottomNav,
      onTap: _onBottomNavTap,
      selectedItemColor: t.primaryColor,
      unselectedItemColor: Colors.black54,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Buat Kamu"),
        BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline), label: "Feed"),
        BottomNavigationBarItem(icon: Icon(Icons.local_offer_outlined), label: "Promo"),
        BottomNavigationBarItem(icon: Icon(Icons.receipt_long), label: "Transaksi"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Akun"),
      ],
    );
  }

  Future<void> _onBottomNavTap(int index) async {
    if (index == 4) {
      await _emergencyLogout();
      return;
    }

    if (!mounted) return;
    setState(() {
      _selectedBottomNav = index;
    });
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

  Widget _gridSection(ThemeData t) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView.builder(
          itemCount: _gridItems.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.78,
          ),
          itemBuilder: (context, index) {
            final item = _gridItems[index];
            return _gridCard(t, item);
          },
        ),
        if (_isLoadingMore)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: SizedBox(
                height: 22,
                width: 22,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            ),
          ),
      ],
    );
  }

  Widget _gridCard(ThemeData t, _GridItem item) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 6),
            color: Color(0x14000000),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF0F2F6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Icon(Icons.image, color: Colors.black26),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item.title,
            style: t.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            item.price,
            style: t.textTheme.labelLarge?.copyWith(
              color: const Color(0xFFE74C3C),
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            item.subtitle,
            style: t.textTheme.labelSmall?.copyWith(color: Colors.black54),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  void _onScroll() {
    if (_isLoadingMore) return;
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 120) {
      _fetchMore();
    }
  }

  Future<void> _fetchMore() async {
    setState(() => _isLoadingMore = true);
    await Future<void>.delayed(const Duration(milliseconds: 700));
    final start = _page * 10;
    final newItems = List.generate(10, (index) {
      final number = start + index + 1;
      return _GridItem(
        title: "Produk $number",
        price: "Rp${(number * 1234) % 99999}",
        subtitle: "Kategori ${(number % 6) + 1}",
      );
    });
    setState(() {
      _gridItems.addAll(newItems);
      _page += 1;
      _isLoadingMore = false;
    });
  }

  Widget _iconButton(IconData icon) {
    return GestureDetector(
      onTap: () async {
        debugPrint("icon ${icon.hashCode} is clicked");
      },
      child: Container(
        height: 38,
        width: 38,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, size: 23, color: Colors.black87),
      ),
    );
  }

  Widget _iconBadge({required IconData icon, int count = 0}) {
    return Stack(
      children: [
        _iconButton(icon),
        if (count > 0)
        Positioned(
          right: 2,
          top: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              count.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _QuickItem {
  final IconData icon;
  final String label;
  const _QuickItem({required this.icon, required this.label});
}

class _FeatureItem {
  final String icon;
  final String label;
  const _FeatureItem({required this.icon, required this.label});
}

class _CardItem {
  final String title;
  final String subtitle;
  const _CardItem({required this.title, required this.subtitle});
}

class _ProductItem {
  final String title;
  final String price;
  final String oldPrice;
  const _ProductItem({
    required this.title,
    required this.price,
    required this.oldPrice,
  });
}

class _GridItem {
  final String title;
  final String price;
  final String subtitle;
  const _GridItem({
    required this.title,
    required this.price,
    required this.subtitle,
  });
}
