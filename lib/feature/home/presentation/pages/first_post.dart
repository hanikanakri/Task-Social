import 'package:flutter/material.dart';

import '/core/constants/app_assets.dart';
import '/core/constants/app_colors.dart';
import '/feature/home/presentation/widgets/image_text.dart';

class FirstPost extends StatelessWidget {
  const FirstPost({super.key});

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
              image: AppAssets.ellipseHome,
              imageButton: AppAssets.archiveHome,
            ),
            const Text(
                "datasssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss"),
            const Divider(
              color: AppColors.black,
            ),
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
