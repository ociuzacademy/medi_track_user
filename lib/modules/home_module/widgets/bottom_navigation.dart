import 'package:flutter/material.dart';
import 'package:medi_track/modules/home_module/widgets/bottom_nav_item.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  const BottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border(
          top: BorderSide(color: colorScheme.outline.withValues(alpha: 0.2)),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavItem(
                icon: Icons.home,
                label: 'Home',
                isSelected: currentIndex == 0,
                onTap: () => onItemTapped(0),
                colorScheme: colorScheme,
              ),
              BottomNavItem(
                icon: Icons.person,
                label: 'Profile',
                isSelected: currentIndex == 1,
                onTap: () => onItemTapped(1),
                colorScheme: colorScheme,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
