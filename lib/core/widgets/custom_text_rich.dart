import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/app_theme.dart';

class CustomTextRich extends StatelessWidget {
  const CustomTextRich({
    super.key,
    this.mainStyle,
    required this.mainText,
    this.secondText,
    this.thirdText,
    this.secondStyle,
    this.thirdStyle,
    this.isDecoration = true,
  });

  final TextStyle? mainStyle;
  final TextStyle? secondStyle;
  final TextStyle? thirdStyle;
  final String mainText;
  final String? secondText;
  final String? thirdText;
  final bool? isDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(0),
      decoration: isDecoration == false
          ? null
          : BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.grey),
      child: Text.rich(
        TextSpan(
          text: mainText.tr(),
          style: mainStyle ?? AppTheme.headline,
          children: [
            TextSpan(
              text: secondText?.tr(),
              style: secondStyle ??
                  AppTheme.bodySmall.copyWith(color: AppColors.black),
            ),
            TextSpan(
              text: thirdText?.tr(),
              style: thirdStyle ??
                  AppTheme.bodySmall.copyWith(color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
