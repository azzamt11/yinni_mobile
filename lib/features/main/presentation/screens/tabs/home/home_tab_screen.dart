import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yinni_mobile/features/main/presentation/blocs/home_cubit.dart';
import 'package:yinni_mobile/features/main/presentation/screens/tabs/home/widgets/home_banner_carousel.dart';
import 'package:yinni_mobile/features/main/presentation/screens/tabs/home/widgets/home_continue_row.dart';
import 'package:yinni_mobile/features/main/presentation/screens/tabs/home/widgets/home_delivery_address_row.dart';
import 'package:yinni_mobile/features/main/presentation/screens/tabs/home/widgets/home_error_section_placeholder.dart';
import 'package:yinni_mobile/features/main/presentation/screens/tabs/home/widgets/home_feature_row.dart';
import 'package:yinni_mobile/features/main/presentation/screens/tabs/home/widgets/home_grid_card.dart';
import 'package:yinni_mobile/features/main/presentation/screens/tabs/home/widgets/home_tabs_row.dart';
import 'package:yinni_mobile/features/main/presentation/screens/tabs/home/widgets/home_top_bar.dart';
import 'package:yinni_mobile/features/main/presentation/screens/tabs/home/widgets/home_wallet_sumary_row.dart';

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
  static const String _errorAsset = "assets/features/home/error.svg";

  final List<HomeFeatureItem> _featureItems = const [
    HomeFeatureItem(icon: "assets/features/home/reactivate.svg", label: "Aktifkan Lagi"),
    HomeFeatureItem(icon: "assets/features/home/topup.svg", label: "Top-Up"),
    HomeFeatureItem(icon: "assets/features/home/mall.svg", label: "Mall"),
    HomeFeatureItem(icon: "assets/features/home/discount.svg", label: "Diskon"),
    HomeFeatureItem(icon: "assets/features/home/paylater.svg", label: "Paylater"),
    HomeFeatureItem(icon: "assets/features/home/credit_card.svg", label: "Kartu Kredit"),
  ];

  @override
  void initState() {
    super.initState();
    _homeCubit = HomeCubit.create(context);
    _scrollController.addListener(_onScroll);
    _startBannerAutoSlide();
    unawaited(_bootHomeData());
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

  Future<void> _bootHomeData() async {
    await Future.wait([
      _homeCubit.fetch(page: 1, pageSize: 10),
      _homeCubit.fetchHighlight(),
    ]);
    if (!mounted) return;
    setState(() {});
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
          child: RefreshIndicator(
            onRefresh: _bootHomeData,
            child: CustomScrollView(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(
                parent: ClampingScrollPhysics(),
              ),
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 10)),
                SliverToBoxAdapter(
                  child: HomeTopBar(
                    onSearchTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Fitur pencarian belum tersedia")),
                      );
                    },
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 10)),
                SliverToBoxAdapter(
                  child: HomeBannerCarousel(
                    controller: _bannerController,
                    activeIndex: _bannerIndex,
                    onPageChanged: (index) => setState(() => _bannerIndex = index),
                    count: _bannerCount,
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 14)),
                // SliverToBoxAdapter(child: HomeQuickRow(items: _quickItems)),
                // const SliverToBoxAdapter(child: SizedBox(height: 14)),
                const SliverToBoxAdapter(child: HomeDeliveryAddressRow()),
                const SliverToBoxAdapter(child: SizedBox(height: 10)),
                const SliverToBoxAdapter(child: HomeWalletSummaryRow()),
                const SliverToBoxAdapter(child: SizedBox(height: 14)),
                SliverToBoxAdapter(child: HomeFeatureRow(items: _featureItems)),
                const SliverToBoxAdapter(child: SizedBox(height: 10)),
                // SliverToBoxAdapter(child: _continueRow()),
                // const SliverToBoxAdapter(child: SizedBox(height: 16)),
                const SliverToBoxAdapter(child: HomeTabsRow()),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                _gridSectionSliver(),
                if (_isPaginating)
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Center(
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      ),
                    ),
                  ),
                const SliverToBoxAdapter(child: SizedBox(height: 16)),
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
    final reachedBottom = position.atEdge && position.pixels > 0;
    if (!reachedBottom) return;

    setState(() => _isPaginating = true);
    try {
      await _homeCubit.loadMore();
    } finally {
      if (mounted) {
        setState(() => _isPaginating = false);
      }
    }
  }

  Widget _continueRow() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is ErrorHomeState || _homeCubit.highlightError != null) {
          return const HomeSectionErrorPlaceholder(
            errorAsset: _errorAsset,
            height: 80,
          );
        }

        final showShimmer = _homeCubit.isFetchingHighlight ||
            (state is LoadingHomeState && (state.page == null || state.page == 1));
        final highlights = _homeCubit.highlightItems;
        final items = highlights
            .map((e) => HomeCardItem(title: e.title, subtitle: e.subtitle))
            .toList();

        if (items.isEmpty && state is LoadedHomeState) {
          return const SizedBox.shrink();
        }

        return HomeContinueRow(
          showShimmer: showShimmer,
          items: items,
        );
      },
    );
  }

  Widget _gridSectionSliver() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is ErrorHomeState || _homeCubit.highlightError != null) {
          return const SliverToBoxAdapter(
            child: HomeSectionErrorPlaceholder(
              errorAsset: _errorAsset,
              height: 80,
            ),
          );
        }

        if (state is LoadingHomeState && (state.page == null || state.page == 1)) {
          return SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.78,
              ),
              delegate: SliverChildBuilderDelegate(
                (_, __) => const HomeShimmerGridCard(),
                childCount: 4,
              ),
            ),
          );
        }

        final products = state is LoadedHomeState ? state.products : _homeCubit.currentProducts;
        if (products.isEmpty) {
          return const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Center(child: Text("No products")),
            ),
          );
        }

        return SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.78,
            ),
            delegate: SliverChildBuilderDelegate(
              (_, index) => HomeGridCard(
                item: products[index],
                formattedPrice: _dollarToRupiah(products[index].sellingPrice),
              ),
              childCount: products.length,
            ),
          ),
        );
      },
    );
  }

  String _dollarToRupiah(String rawPrice) {
    final cleaned = rawPrice.replaceAll('\$', '').replaceAll(',', '').trim();
    final usd = double.tryParse(cleaned) ?? 0;
    const exchangeRate = 16000.0;
    final idr = (usd * exchangeRate).round();

    final chars = idr.toString().split('').reversed.toList();
    final buffer = StringBuffer();
    for (var i = 0; i < chars.length; i++) {
      if (i > 0 && i % 3 == 0) {
        buffer.write('.');
      }
      buffer.write(chars[i]);
    }
    final formatted = buffer.toString().split('').reversed.join();
    return "Rp $formatted";
  }
}
