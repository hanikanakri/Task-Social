import 'package:animated_conditional_builder/animated_conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:task_social_app/feature/home/presentation/widgets/layers.dart';

import '/core/constants/app_assets.dart';
import '/core/constants/app_colors.dart';
import '/core/constants/app_theme.dart';
import '/core/widgets/custom_image.dart';

class Tags extends StatefulWidget {
  Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  final List<String> tageItemText = [
    'Container',
    'Text',
    'Row',
    'Column',
    'Image',
    'Icon',
    'Padding',
    'Margin',
  ];

  bool showList = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: List.generate(
        showList == true ? tageItemText.length : 3,
        (index) => AnimatedConditionalBuilder(
          condition: index == 2,
          fallback: (context) => TageItem(
            tagsText: tageItemText[index],
          ),
          builder: (context) => InkWell(
            onTap: () {
              setState(() {
                showList = true;
              });
            },
            child: Layers(
              index: tageItemText.length.toString(),
            ),
          ),
        ),
      ),
    );
  }
}

class TageItem extends StatelessWidget {
  TageItem({
    super.key,
    this.tagsText,
  });

  String? tagsText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.lightGrey,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImage.rectangle(
            image: AppAssets.saveHome,
            svg: true,
            isNetworkImage: false,
            viewInFullScreen: false,
            color: AppColors.black,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            tagsText ?? '',
            style: AppTheme.bodySmall.copyWith(
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
