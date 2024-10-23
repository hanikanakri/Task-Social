import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/app_theme.dart';

class Layers extends StatelessWidget {
  Layers({
    super.key,
    this.index,
  });

  String? index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          width: 50,
          height: 35,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(25),
            color: AppColors.lightGrey,
          ),
        ),
        Container(
          width: 45,
          height: 35,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(25),
            color: AppColors.lightGrey,
          ),
        ),
        Container(
          width: 40,
          height: 35,
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(25),
            color: AppColors.lightGrey,
          ),
          child: Center(
            child: Text(
              "+ $index" ?? '',
              style: AppTheme.bodySmall.copyWith(
                color: AppColors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
