import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeContinueRow extends StatelessWidget {
  final bool showShimmer;
  final List<HomeCardItem> items;

  const HomeContinueRow({
    super.key,
    required this.showShimmer,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return SizedBox(
      height: 170,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        scrollDirection: Axis.horizontal,
        itemCount: showShimmer ? 4 : items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (_, index) {
          if (showShimmer) return const _HomeShimmerContinueCard();

          final item = items[index];
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
}

class _HomeShimmerContinueCard extends StatelessWidget {
  const _HomeShimmerContinueCard();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 138,
      child: Shimmer.fromColors(
        baseColor: const Color.fromARGB(255, 228, 233, 239),
        highlightColor: const Color(0xFFF7F9FC),
        period: const Duration(milliseconds: 1400),
        direction: ShimmerDirection.ltr,
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFE6EAF0), width: 0.6),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _ShimmerLine(height: 12, width: double.infinity),
                    SizedBox(height: 6),
                    _ShimmerLine(height: 10, width: 84),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ShimmerLine extends StatelessWidget {
  final double height;
  final double width;

  const _ShimmerLine({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.white,
    );
  }
}

class HomeCardItem {
  final String title;
  final String subtitle;

  const HomeCardItem({required this.title, required this.subtitle});
}
