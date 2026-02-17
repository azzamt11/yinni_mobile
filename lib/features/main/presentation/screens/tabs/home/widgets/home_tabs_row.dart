import 'package:flutter/material.dart';

class HomeTabsRow extends StatelessWidget {
  const HomeTabsRow({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    const labels = <String>["Rekomendasi", "Disukai", "Aksesoris", "Pakaian"];
    return SizedBox(
      height: 34,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: labels.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (_, index) => _TabChip(t: t, label: labels[index], selected: index == 0),
      ),
    );
  }
}

class _TabChip extends StatelessWidget {
  final ThemeData t;
  final String label;
  final bool selected;

  const _TabChip({
    required this.t,
    required this.label,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
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
}