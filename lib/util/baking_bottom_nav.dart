import 'package:flutter/material.dart';

class BankingBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BankingBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> navItems = [
      {"icon": "assets/house-chimney.png", "label": "Home"},
      {"icon": "assets/insert-credit-card.png", "label": "My Cards"},
      {"icon": "assets/chart-pie-alt.png", "label": "Statistics"},
      {"icon": "assets/settings.png", "label": "Settings"},
    ];

    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: List.generate(navItems.length, (index) {
          final item = navItems[index];
          final bool isSelected = currentIndex == index;

          return Expanded(
            child: InkWell(
              onTap: () => onTap(index),
              splashColor: Colors.blue.withOpacity(0.2),
              highlightColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      item["icon"]!,
                      color: isSelected ? Colors.blue : Colors.grey[600],
                      width: 24,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item["label"],
                      style: TextStyle(
                        fontSize: 12,
                        color: isSelected ? Colors.blue : Colors.grey[600],
                        fontWeight: isSelected
                            ? FontWeight.w600
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
