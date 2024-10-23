import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:task_social_app/core/constants/app_assets.dart';

import '/core/constants/app_colors.dart';

class ConsoleSliderBanner extends StatelessWidget {
  const ConsoleSliderBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17.5),
        child: Container(
          color: AppColors.blueShade,
          padding: const EdgeInsets.only(bottom: 5),
          child: CustomCarouselSlider(
            items: [
              CarouselItem(image: const AssetImage(AppAssets.i04Home)),
              CarouselItem(image: const AssetImage(AppAssets.i04Home)),
              CarouselItem(image: const AssetImage(AppAssets.i04Home)),
              CarouselItem(image: const AssetImage(AppAssets.i04Home))
            ],
            height: 400,
            subHeight: 50,
            animationCurve: Curves.linear,
            // width: MediaQuery.of(context).size.width * .9,
            autoplay: false,
            showText: false,
            showSubBackground: false,
            indicatorPosition: IndicatorPosition.insidePicture,
            indicatorShape: BoxShape.circle,
            selectedDotColor: AppColors.white,
            unselectedDotColor: AppColors.grey,
          ),
        ),
      ),
    );
  }
}
