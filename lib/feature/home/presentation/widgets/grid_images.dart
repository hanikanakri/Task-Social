import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:task_social_app/core/constants/app_assets.dart';
import 'package:task_social_app/core/widgets/custom_image.dart';

class GridImages extends StatelessWidget {
  const GridImages({super.key});

  @override
  Widget build(BuildContext context) {
    return    StaggeredGrid.count(
      crossAxisCount: 5,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 3,
          mainAxisCellCount: 2.2,
          child:  CustomImage.rectangle(
            image: AppAssets.i04Home,
            cornerRadius: 25,
            fit: BoxFit.fitWidth,
            isNetworkImage: false,
            viewInFullScreen: true,
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1.1,
          child:  CustomImage.rectangle(
            image: AppAssets.i04Home,
            cornerRadius: 25,
            fit: BoxFit.fitWidth,
            isNetworkImage: false,
            viewInFullScreen: true,
          ),
        ),StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1.1,
          child:  CustomImage.rectangle(
            image: AppAssets.i04Home,
            cornerRadius: 25,
            fit: BoxFit.fitWidth,
            isNetworkImage: false,
            viewInFullScreen: true,
          ),
        ),
      ],
    );

    /*return Row(
      mainAxisSize: MainAxisSize.min,
      children: [

        CustomImage.rectangle(
          image: AppAssets.i04Home,
          cornerRadius: 25,
          fit: BoxFit.fitWidth,
          isNetworkImage: false,
          viewInFullScreen: true,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImage.rectangle(
              image: AppAssets.i04Home,
              cornerRadius: 25,
              isNetworkImage: false,
              viewInFullScreen: true,
            ),
            CustomImage.rectangle(
              image: AppAssets.i04Home,
              cornerRadius: 25,
              isNetworkImage: false,
              viewInFullScreen: true,
            ),
          ],
        ),
      ],
    );*/
  }
}
