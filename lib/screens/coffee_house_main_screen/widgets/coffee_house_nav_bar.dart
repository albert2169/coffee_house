import 'package:coffee_house/constants/coffee_house_constants.dart';
import 'package:coffee_house/models/coffee_house_nav_bar.dart';
import 'package:flutter/material.dart';

class CoffeeHouseNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CoffeeHouseNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      color: Colors.white,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(
              index: 0,
              item: CoffeeHouseConstants.bottomNavigationBar[0],
            ),
            _buildNavItem(
              index: 1,
              item: CoffeeHouseConstants.bottomNavigationBar[1],
            ),
            const SizedBox(width: 48),
            _buildNavItem(
              index: 3,
              item: CoffeeHouseConstants.bottomNavigationBar[2],
            ),
            _buildNavItem(
              index: 4,
              item: CoffeeHouseConstants.bottomNavigationBar[3],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({required int index, required IconTextItem item}) {
    final bool isSelected = currentIndex == index;
    final Color color = isSelected
        ? const Color(0xFFDE111F)
        : const Color(0xFF4A4A4A);

    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item.iconData, color: color, size: 24),
            const SizedBox(height: 4),
            Text(
              item.name,
              style: TextStyle(
                color: color,
                fontSize: 10,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
