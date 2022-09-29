import 'package:flutter/material.dart';

class StoriesCircle extends StatelessWidget {
  const StoriesCircle({
    super.key,
    required this.image,
    required this.color,
    required this.width,
    required this.title,
    required this.screenHeight,
    required this.textColor,
    required this.heightBetweenStorieAndUser,
  });
  final String image;
  final Color color;
  final double width;
  final String title;
  final double screenHeight;
  final Color textColor;
  final double heightBetweenStorieAndUser;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: width,
          backgroundColor: color,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 35.5,
            child: CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage(
                'lib/shared/assets/images/$image',
              ),
            ),
          ),
        ),
        SizedBox(
          height: heightBetweenStorieAndUser,
        ),
        Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
