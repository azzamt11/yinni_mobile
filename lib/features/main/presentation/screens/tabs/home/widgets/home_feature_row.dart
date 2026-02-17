import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeFeatureRow extends StatelessWidget {
  final List<HomeFeatureItem> items;

  const HomeFeatureRow({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (_, index) {
          final item = items[index];
          return Column(
            children: [
              SizedBox(
                height: 58,
                width: 58,
                child: SvgPicture.asset(item.icon, fit: BoxFit.cover),
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: 72,
                child: Text(
                  item.label,
                  textAlign: TextAlign.center,
                  style: t.textTheme.labelSmall?.copyWith(color: Colors.black87, height: 0.9),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class HomeFeatureItem {
  final String icon;
  final String label;

  const HomeFeatureItem({required this.icon, required this.label});
}