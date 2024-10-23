import 'package:flutter/material.dart';
import 'package:task_social_app/core/animations/navigation_route_animation/navigation_route_animation.dart';
import 'package:task_social_app/core/constants/app_colors.dart';
import 'package:task_social_app/core/widgets/custom_image.dart';
import 'package:task_social_app/feature/home/presentation/pages/states_stories.dart';

import '/core/constants/app_assets.dart';

class Stories extends StatelessWidget {
  Stories({super.key});

  final List<String> listImages = [
    AppAssets.stories1Home,
    AppAssets.stories2Home,
    AppAssets.stories3Home,
    AppAssets.stories4Home,
    AppAssets.stories5Home,
    AppAssets.stories6Home,
    AppAssets.stories7Home,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 5),
      margin: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.black12,
      ),
      child: ListView.builder(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              print(index);
              AnimationNavigation.sizePush(context, StatesStories());
            },
            child: CustomImage.circular(
              radius: 50,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              image: listImages[index],
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.white, width: 3),
                borderRadius: BorderRadius.circular(25),
              ),
              isNetworkImage: false,
              svg: false,
              viewInFullScreen: false,
            ),
          );
        },
      ),
    );
  }
}
