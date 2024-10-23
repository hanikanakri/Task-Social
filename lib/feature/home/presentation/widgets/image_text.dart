import 'package:flutter/material.dart';
import 'package:task_social_app/feature/home/presentation/widgets/comments_card.dart';

import '/core/constants/app_theme.dart';
import '/core/widgets/custom_image.dart';

class ImageText extends StatelessWidget {
  ImageText({
    super.key,
    this.imageButton,
    this.secondImage,
    this.secondNumberText,
    this.numberText,
    this.timeText,
    this.image,
    this.isSVG = true,
    this.isSVG1 = true,
    this.isSecond = false,
    this.isText = false,
  });

  dynamic image;
  dynamic secondImage;
  dynamic imageButton;
  String? numberText;
  String? secondNumberText;
  String? timeText;
  bool? isSVG;
  bool? isSVG1;
  bool? isText;
  bool? isSecond;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImage.rectangle(
              image: image,
              svg: isSVG,
              isNetworkImage: false,
              viewInFullScreen: false,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              numberText ?? 'ssss',
              style: AppTheme.bodySmall,
            ),
            if (isSecond == true)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: InkWell(
                  onTap: () => _showComments(context),
                  child: Row(
                    children: [
                      CustomImage.rectangle(
                        image: secondImage,
                        svg: isSVG,
                        isNetworkImage: false,
                        viewInFullScreen: false,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'ssss',
                        style: AppTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
        if (isText == false)
          CustomImage.rectangle(
            image: imageButton,
            svg: isSVG1,
            isNetworkImage: false,
            viewInFullScreen: false,
          ),
        if (isText == true)
          Text(
            timeText ?? '',
            style: AppTheme.bodySmall,
          ),
      ],
    );
  }

  _showComments(BuildContext context) {
    showBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (context) {
        return
          CommentsCard();

      },
    );
  }
}
