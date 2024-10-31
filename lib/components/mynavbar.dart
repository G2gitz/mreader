import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class Mynavbar extends StatelessWidget {
  final PageController pageController;
  final int indexx;

  const Mynavbar({
    super.key,
    required this.pageController,
    required this.indexx,
  });

  @override
  Widget build(BuildContext context) {
    return CrystalNavigationBar(
      currentIndex: indexx, // Use the passed indexx directly
      height: 10,
      indicatorColor: secondary_color,
      unselectedItemColor: white_color,
      selectedItemColor: secondary_color,
      outlineBorderColor: white_color.withOpacity(0.7),
      backgroundColor: Colors.black.withOpacity(0.5),
      enableFloatingNavBar: true,
      onTap: (index) {
        pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      items: [
        CrystalNavigationBarItem(
          icon: Icons.home,
          selectedColor: secondary_color,
        ),
        CrystalNavigationBarItem(
          icon: Icons.update,
          selectedColor: secondary_color,
        ),
        CrystalNavigationBarItem(
          icon: Icons.history,
          selectedColor: secondary_color,
        ),
        CrystalNavigationBarItem(
          icon: Icons.more_horiz,
          selectedColor: secondary_color,
        ),
      ],
    );
  }
}
