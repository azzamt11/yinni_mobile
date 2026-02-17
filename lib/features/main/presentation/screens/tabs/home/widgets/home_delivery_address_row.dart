import 'package:flutter/material.dart';

class HomeDeliveryAddressRow extends StatelessWidget {
  final String prefixText;
  final String addressLabel;

  const HomeDeliveryAddressRow({
    super.key,
    this.prefixText = "Dikirim ke ",
    this.addressLabel = "-",
  });

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: t.splashColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(Icons.location_on, color: t.primaryColor, size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: t.textTheme.bodyLarge?.copyWith(color: Colors.black87),
                  children: [
                    TextSpan(text: prefixText),
                    TextSpan(
                      text: addressLabel,
                      style: t.textTheme.bodyLarge?.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 6),
            const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black54),
          ],
        ),
      ),
    );
  }
}