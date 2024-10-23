import 'package:flutter/material.dart';
import 'package:task_social_app/feature/home/presentation/widgets/tags.dart';

import '/core/constants/app_assets.dart';
import '/core/constants/app_colors.dart';
import '/core/constants/app_theme.dart';
import '/feature/home/presentation/widgets/carousel_slider_home_page.dart';
import '/feature/home/presentation/widgets/image_text.dart';

class SecondPost extends StatelessWidget {
  const SecondPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          ...[
            ImageText(
              isSVG: false,
              isText: true,
              timeText: '34535',
              numberText: 'sdef',
              image: AppAssets.ellipse1Home,
              imageButton: AppAssets.archiveHome,
            ),
            const ConsoleSliderBanner(),
            Text(
              "sddddddsdsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss",
              style: AppTheme.bodySmall.copyWith(
                color: AppColors.black,
              ),
            ),
            const Divider(
              color: AppColors.black,
            ),
            Tags(),
            ImageText(
              image: AppAssets.heartHome,
              imageButton: AppAssets.archiveHome,
              isSecond: true,
              secondNumberText: '658',
              secondImage: AppAssets.commentHome,
            ),
          ].expand(
            (element) => [
              element,
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
