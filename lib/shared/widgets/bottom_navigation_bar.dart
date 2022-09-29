import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/shared/constants/constants.dart';

class BottomNavigationBarInsta extends StatelessWidget {
  const BottomNavigationBarInsta({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });
  final screenHeight;
  final screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight / 14,
      width: screenWidth,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.slow_motion_video_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          const CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage(
              'lib/shared/assets/images/${Constants.kid}',
            ),
          )
        ],
      ),
    );
  }
}
