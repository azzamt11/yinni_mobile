import 'package:flutter/material.dart';

class HomeBannerCarousel extends StatelessWidget {
  final PageController controller;
  final int activeIndex;
  final ValueChanged<int> onPageChanged;
  final int count;

  const HomeBannerCarousel({
    super.key,
    required this.controller,
    required this.activeIndex,
    required this.onPageChanged,
    this.count = 3,
  });

  @override
  Widget build(BuildContext context) {
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
                controller: controller,
                onPageChanged: onPageChanged,
                children: const [
                  _BannerSlide(title: "Top Up Diamonds", subtitle: "29% Diamonds"),
                  _BannerSlide(title: "Promo Paling Hot!", subtitle: "Diskon s.d. 70%"),
                  _BannerSlide(title: "Gratis Ongkir", subtitle: "Min. transaksi Rp50.000"),
                ],
              ),
              Positioned(
                bottom: 10,
                child: Row(
                  children: List.generate(count, (index) {
                    final active = index == activeIndex;
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