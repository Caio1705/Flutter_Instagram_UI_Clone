import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/shared/constants/constants.dart';
import 'package:flutter_instagram_clone/shared/widgets/bottom_navigation_bar.dart';
import 'package:flutter_instagram_clone/shared/widgets/row_icons_under_post.dart';
import 'package:flutter_instagram_clone/shared/widgets/stories_circle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 32,
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_box_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.messenger_outline),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: screenWidth * 1.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StoriesCircle(
                        image: Constants.kid,
                        color: Colors.grey.shade700,
                        width: 36.5,
                        title: 'Your Story',
                        screenHeight: screenHeight,
                        textColor: Colors.grey,
                        heightBetweenStorieAndUser: (screenHeight / 150) + 1.3,
                      ),
                      StoriesCircle(
                        image: Constants.penguin,
                        color: Colors.yellow.shade600,
                        width: 37.8,
                        title: 'andyrohan',
                        screenHeight: screenHeight,
                        textColor: Colors.white,
                        heightBetweenStorieAndUser: screenHeight / 150,
                      ),
                      StoriesCircle(
                        image: Constants.hijabGirl,
                        color: Colors.yellow.shade600,
                        width: 37.8,
                        title: 'antoharris',
                        textColor: Colors.white,
                        screenHeight: screenHeight,
                        heightBetweenStorieAndUser: screenHeight / 150,
                      ),
                      StoriesCircle(
                        image: Constants.cartoon,
                        color: Colors.yellow.shade600,
                        width: 37.8,
                        title: 'rogerwilki',
                        screenHeight: screenHeight,
                        textColor: Colors.white,
                        heightBetweenStorieAndUser: screenHeight / 150,
                      ),
                      StoriesCircle(
                        image: Constants.boy,
                        color: Colors.yellow.shade600,
                        width: 37.8,
                        title: 'joshua078',
                        screenHeight: screenHeight,
                        textColor: Colors.white,
                        heightBetweenStorieAndUser: screenHeight / 150,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight / 3000,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 0,
                left: 8,
                top: 5,
                bottom: 5,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.yellow.shade600,
                    radius: 19.5,
                    child: const CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 18,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(
                          'lib/shared/assets/images/${Constants.cartoon}',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth / 45,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'rogerwilki',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'California',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth / 1.79,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'lib/shared/assets/images/${Constants.landscapeFeedPhoto}',
              fit: BoxFit.fitWidth,
            ),
            const RowIconsUnderPost(),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                bottom: 4,
              ),
              child: SizedBox(
                height: screenHeight / 12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '87 likes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          'rogerwilki',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(' '),
                        Text(
                          'Surfing on the weekend',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'View all 3 comments',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '2 hours ago',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarInsta(
        screenHeight: screenHeight,
        screenWidth: screenWidth,
      ),
    );
  }
}
