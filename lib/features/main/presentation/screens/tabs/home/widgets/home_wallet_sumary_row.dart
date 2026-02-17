import 'package:flutter/material.dart';

class HomeWalletSummaryRow extends StatelessWidget {
  const HomeWalletSummaryRow({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE6EAF0)),
        ),
        child: Row(
          children: [
            Expanded(
              child: _WalletSummaryItem(
                t: t,
                icon: Icons.account_balance_wallet_rounded,
                iconColor: const Color(0xFF0EA5E9),
                title: "Rp 0",
                subtitle: "0 Coins",
              ),
            ),
            const _WalletDivider(),
            Expanded(
              child: _WalletSummaryItem(
                t: t,
                icon: Icons.workspace_premium_rounded,
                iconColor: const Color(0xFFF59E0B),
                title: "Yinni Plus",
                subtitle: "Langganan, Yuk!",
              ),
            ),
            const _WalletDivider(),
            Expanded(
              child: _WalletSummaryItem(
                t: t,
                icon: Icons.verified_rounded,
                iconColor: const Color(0xFF94A3B8),
                title: "Silver Point",
                subtitle: "16 Kupon Baru",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WalletDivider extends StatelessWidget {
  const _WalletDivider();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: 34,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      color: const Color(0xFFE6EAF0),
    );
  }
}

class _WalletSummaryItem extends StatelessWidget {
  final ThemeData t;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;

  const _WalletSummaryItem({
    required this.t,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: iconColor.withValues(alpha: 0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 16, color: iconColor),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: t.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              Text(
                subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: t.textTheme.labelMedium?.copyWith(color: Colors.black54),
              ),
            ],
          ),
        ),
      ],
    );
  }
}