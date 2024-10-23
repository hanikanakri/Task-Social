import 'package:flutter/material.dart';

import '/core/constants/app_assets.dart';
import '/core/constants/app_colors.dart';
import '/feature/home/presentation/widgets/grid_images.dart';
import '/feature/home/presentation/widgets/image_text.dart';

class ThirdPost extends StatelessWidget {
  const ThirdPost({super.key});

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
              timeText: '2265',
              numberText: 'fgg6',
              image: AppAssets.ellipse1Home,
              imageButton: AppAssets.archiveHome,
            ),
            const GridImages(),
            ImageText(
              image: AppAssets.heartHome,
              imageButton: AppAssets.archiveHome,
              isSecond: true,
              numberText: "26",
              secondNumberText: '35',
              secondImage: AppAssets.commentHome,
            ),
          ].expand(
            (element) => [
              element,
              const SizedBox(
                height: 8,
              ),
            ],
          )
        ],
      ),
    );
  }
}
