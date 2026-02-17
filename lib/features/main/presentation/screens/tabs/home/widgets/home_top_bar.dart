import 'package:flutter/material.dart';
import 'package:yinni_mobile/core/common/widgets/app_input_field.dart';

class HomeTopBar extends StatelessWidget {
  final VoidCallback onSearchTap;

  const HomeTopBar({super.key, required this.onSearchTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onSearchTap,
              child: const IgnorePointer(
                child: SizedBox(
                  height: 40,
                  child: AppInputField(
                    hint: "Cari",
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                    borderRadius: 12,
                    enabledBorderColor: Colors.black,
                    enabledBorderWidth: 1,
                    prefixIcon: Icon(Icons.search, size: 20, color: Colors.black45),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.chat_bubble_outline, color: Colors.black87),
          const SizedBox(width: 12),
          const Icon(Icons.menu, color: Colors.black87),
        ],
      ),
    );
  }
}