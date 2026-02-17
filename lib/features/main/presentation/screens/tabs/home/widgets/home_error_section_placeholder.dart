import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSectionErrorPlaceholder extends StatelessWidget {
  final String errorAsset;
  final double height;

  const HomeSectionErrorPlaceholder({
    super.key,
    required this.errorAsset,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return LayoutBuilder(
      builder: (context, c) {
        return Container(
          padding: const EdgeInsets.only(bottom: 20),
          width: c.maxWidth,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                errorAsset,
                height: height,
                fit: BoxFit.fitHeight,
              ),
              Text(
                "Opps, Ada gangguan server",
                style: t.textTheme.titleMedium?.copyWith(color: t.primaryColor),
              ),
            ],
          ),
        );
      },
    );
  }
}
