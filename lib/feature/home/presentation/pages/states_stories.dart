import 'package:flutter/material.dart';
import 'package:task_social_app/core/constants/app_assets.dart';
import 'package:task_social_app/core/constants/app_colors.dart';
import 'package:task_social_app/core/constants/app_theme.dart';
import 'package:task_social_app/core/utils/navigation.dart';
import 'package:task_social_app/core/widgets/custom_image.dart';

class StatesStories extends StatelessWidget {
  StatesStories({
    super.key,
    this.index,
  });

  int? index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomImage.rectangle(
              image: AppAssets.rectangleHome,
              svg: false,
              fit: BoxFit.fill,
              isNetworkImage: false,
              viewInFullScreen: false,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Material(
              elevation: 25,
              color: AppColors.transparent,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigation.pop(context);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: CustomImage.rectangle(
                                image: AppAssets.backHome,
                                svg: true,
                                fit: BoxFit.fill,
                                isNetworkImage: false,
                                viewInFullScreen: false,
                              ),
                            ),
                          ),
                          Text(
                            "Hani_kanakri",
                            style: AppTheme.headline
                                .copyWith(color: AppColors.white),
                          ),
                        ],
                      ),
                      CustomImage.rectangle(
                        image: AppAssets.downloadHome,
                        isNetworkImage: false,
                        svg: true,
                        viewInFullScreen: false,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: CustomImage.rectangle(
                  image: AppAssets.unheartHome,
                  svg: true,
                  isNetworkImage: false,
                  viewInFullScreen: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
