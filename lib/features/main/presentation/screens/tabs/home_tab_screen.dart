import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:yinni_mobile/core/common/widgets/app_input_field.dart';
import 'package:yinni_mobile/features/main/data/models/product_data.dart';
import 'package:yinni_mobile/features/main/presentation/blocs/home_cubit.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  late final HomeCubit _homeCubit;
  final PageController _bannerController = PageController();
  final ScrollController _scrollController = ScrollController();
  Timer? _bannerAutoSlideTimer;
  int _bannerIndex = 0;
  bool _isPaginating = false;
  static const int _bannerCount = 3;

  final List<_QuickItem> _quickItems = const [
    _QuickItem(icon: Icons.account_balance_wallet, label: "Rp 50.000"),
    _QuickItem(icon: Icons.payments, label: "Rp 0"),
    _QuickItem(icon: Icons.confirmation_num, label: "Kupon"),
    _QuickItem(icon: Icons.local_shipping, label: "Dikirim"),
  ];

  final List<_FeatureItem> _featureItems = const [
    _FeatureItem(icon: "assets/features/home/reactivate.svg", label: "Aktifkan Lagi"),
    _FeatureItem(icon: "assets/features/home/topup.svg", label: "Top-Up"),
    _FeatureItem(icon: "assets/features/home/mall.svg", label: "Mall"),
    _FeatureItem(icon: "assets/features/home/discount.svg", label: "Diskon"),
    _FeatureItem(icon: "assets/features/home/paylater.svg", label: "Paylater"),
    _FeatureItem(icon: "assets/features/home/credit_card.svg", label: "Kartu Kredit"),
  ];

  final List<_CardItem> _continueItems = const [
    _CardItem(title: "Balik lihat", subtitle: "Liontin Wanita"),
    _CardItem(title: "Terakhir cek", subtitle: "Buku Kesuksesan"),
    _CardItem(title: "Incaranmu", subtitle: "Secretarial Book"),
    _CardItem(title: "Siap dibeli", subtitle: "Buku Bimbingan"),
  ];

  @override
  void initState() {
    super.initState();
    _homeCubit = HomeCubit.create(context);
    _scrollController.addListener(_onScroll);
    _startBannerAutoSlide();
    _homeCubit.fetch(page: 1, pageSize: 10);
  }

  @override
  void dispose() {
    _bannerAutoSlideTimer?.cancel();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _bannerController.dispose();
    _homeCubit.close();
    super.dispose();
  }

  void _startBannerAutoSlide() {
    _bannerAutoSlideTimer?.cancel();
    _bannerAutoSlideTimer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (!mounted || !_bannerController.hasClients) return;
      final nextPage = (_bannerIndex + 1) % _bannerCount;
      _bannerController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 320),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return BlocProvider<HomeCubit>.value(
      value: _homeCubit,
      child: SafeArea(
        child: BlocListener<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state is ErrorHomeState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error.message ?? "Something went wrong")),
              );
            }
          },
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                _topBar(t),
                const SizedBox(height: 14),
                _bannerCarousel(),
                const SizedBox(height: 14),
                _quickRow(t),
                const SizedBox(height: 14),
                _featureRow(t),
                const SizedBox(height: 10),
                _continueRow(t),
                const SizedBox(height: 16),
                _tabsRow(t),
                const SizedBox(height: 20),
                _gridSection(t),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onScroll() async {
    if (_isPaginating || !_homeCubit.hasMore || _homeCubit.isLoadingMore) return;
    if (!_scrollController.hasClients) return;

    final position = _scrollController.position;
    if (position.pixels < position.maxScrollExtent - 200) return;

    _isPaginating = true;
    try {
      await _homeCubit.loadMore();
    } finally {
      _isPaginating = false;
    }
  }

  Widget _topBar(ThemeData t) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Expanded(
            child: SizedBox(
              height: 40,
              child: AppInputField(
                hint: "Cari",
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                borderRadius: 12,
                enabledBorderColor: Colors.black,
                enabledBorderWidth: 1,
                prefixIcon: Icon(Icons.search, size: 20, color: Colors.black45),
              ),
            )
          ),
          const SizedBox(width: 10),
          const Icon(Icons.chat_bubble_outline, color: Colors.black87),
          const SizedBox(width: 12),
          const Icon(Icons.shopping_cart_outlined, color: Colors.black87),
        ],
      ),
    );
  }

  Widget _bannerCarousel() {
    return SizedBox(
      height: 176,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                controller: _bannerController,
                onPageChanged: (index) => setState(() => _bannerIndex = index),
                children: const [
                  _BannerSlide(title: "Top Up Diamonds", subtitle: "29% Diamonds"),
                  _BannerSlide(title: "Promo Paling Hot!", subtitle: "Diskon s.d. 70%"),
                  _BannerSlide(title: "Gratis Ongkir", subtitle: "Min. transaksi Rp50.000"),
                ],
              ),
              Positioned(
                bottom: 10,
                child: Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _quickRow(ThemeData t) {
    return SizedBox(
      height: 44,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: _quickItems.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (_, index) => _quickChip(t, _quickItems[index]),
      ),
    );
  }

  Widget _quickChip(ThemeData t, _QuickItem item) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 148),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [t.primaryColor, t.cardColor]),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(item.icon, size: 16, color: Colors.white),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              item.label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: t.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _featureRow(ThemeData t) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: _featureItems.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (_, index) {
          final item = _featureItems[index];
          return Column(
            children: [
              Container(
                height: 58,
                width: 58,
                decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Center(
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: SvgPicture.asset(item.icon, fit: BoxFit.contain),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: 72,
                child: Text(
                  item.label,
                  textAlign: TextAlign.center,
                  style: t.textTheme.labelSmall?.copyWith(color: Colors.black87, height: 1.1),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _continueRow(ThemeData t) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        scrollDirection: Axis.horizontal,
        itemCount: _continueItems.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (_, index) {
          final item = _continueItems[index];
          return SizedBox(
            width: 138,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black26, width: 0.6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFF0F2F6),
                        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                      ),
                      child: const Center(child: Icon(Icons.image, color: Colors.black26)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _tabsRow(ThemeData t) {
    const labels = <String>["Rekomendasi", "Disukai", "Aksesoris", "Pakaian"];
    return SizedBox(
      height: 34,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: labels.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (_, index) => _tabChip(t, labels[index], selected: index == 0),
      ),
    );
  }

  Widget _tabChip(ThemeData t, String label, {bool selected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFE6F6EF) : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: selected ? const Color(0xFF27AE60) : Colors.black26,
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

  Widget _gridSection(ThemeData t) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is LoadingHomeState && state.page == 1) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: Center(child: CircularProgressIndicator()),
          );
        }

        final products = state is LoadedHomeState ? state.products : const <ProductData>[];
        if (products.isEmpty) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: Center(child: Text("No products")),
          );
        }

        return Column(
          children: [
            GridView.builder(
              itemCount: state is LoadingHomeState && state.page == 1 ? 4 : products.length,
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.78,
              ),
              itemBuilder: (_, index) => state is LoadingHomeState 
              ? _shimmerGridCard(t)
              : _gridCard(t, products[index]),
            ),
            if (_homeCubit.isLoadingMore)
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _gridCard(ThemeData t, ProductData item) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black26, width: 0.6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF0F2F6),
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              ),
              child: const Center(child: Icon(Icons.image, color: Colors.black26)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: t.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  item.sellingPrice,
                  style: t.textTheme.labelLarge?.copyWith(
                    color: const Color(0xFFE74C3C),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  item.category,
                  style: t.textTheme.labelSmall?.copyWith(color: Colors.black54),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _shimmerGridCard(ThemeData t) {
    return Shimmer(
      gradient: LinearGradient(
        colors: [
          Color(0xFFBCBCBC),
          Color(0xFFDDDDDD)
        ]
      ),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
      ), 
    );
  }

  
}

class _BannerSlide extends StatelessWidget {
  final String title;
  final String subtitle;

  const _BannerSlide({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/features/home/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
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
