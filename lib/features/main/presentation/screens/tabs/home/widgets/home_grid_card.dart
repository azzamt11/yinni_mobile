import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:yinni_mobile/features/main/data/models/product_data.dart';

class HomeGridCard extends StatelessWidget {
  final ProductData item;
  final String formattedPrice;

  const HomeGridCard({
    super.key,
    required this.item,
    required this.formattedPrice,
  });

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final String imageUrl = item.primaryImage.isNotEmpty
        ? item.primaryImage
        : (item.images.isNotEmpty ? item.images.first : "");

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black26, width: 0.7),
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
                child: imageUrl.isEmpty
                    ? const Center(child: Icon(Icons.image, color: Colors.black26))
                    : ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const Center(
                              child: SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              ),
                            );
                          },
                          errorBuilder: (_, __, ___) =>
                              const Center(child: Icon(Icons.broken_image, color: Colors.black26)),
                        ),
                      )),
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
                  formattedPrice,
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
}

class HomeShimmerGridCard extends StatelessWidget {
  const HomeShimmerGridCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
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
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 12, width: double.infinity, color: Colors.white),
                  const SizedBox(height: 6),
                  Container(height: 12, width: 90, color: Colors.white),
                  const SizedBox(height: 6),
                  Container(height: 10, width: 70, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}