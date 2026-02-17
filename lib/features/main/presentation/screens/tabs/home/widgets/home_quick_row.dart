import 'package:flutter/material.dart';

class HomeQuickRow extends StatelessWidget {
  final List<HomeQuickItem> items;

  const HomeQuickRow({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return SizedBox(
      height: 44,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (_, index) => _QuickChip(t: t, item: items[index]),
      ),
    );
  }
}

class _QuickChip extends StatelessWidget {
  final ThemeData t;
  final HomeQuickItem item;

  const _QuickChip({required this.t, required this.item});

  @override
  Widget build(BuildContext context) {
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
}

class HomeQuickItem {
  final IconData icon;
  final String label;

  const HomeQuickItem({required this.icon, required this.label});
}