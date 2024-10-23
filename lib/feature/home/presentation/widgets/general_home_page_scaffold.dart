import 'package:flutter/material.dart';

import '/core/constants/app_assets.dart';
import '/core/constants/app_colors.dart';
import '/core/widgets/custom_image.dart';

class GeneralHomePageScaffold extends StatelessWidget {
  const GeneralHomePageScaffold({
    super.key,
    this.body,
    this.showAppBar = true,
  });

  final Widget? body;
  final bool showAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      resizeToAvoidBottomInset: false,
      appBar: showAppBar == true
          ? AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              leading: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomImage.rectangle(
                  image: AppAssets.vectorHome,
                  isNetworkImage: false,
                  svg: false,
                  viewInFullScreen: false,
                ),
              ),
              title: CustomImage.rectangle(
                image: AppAssets.sociallyHome,
                isNetworkImage: false,
                svg: false,
                viewInFullScreen: false,
              ),
            )
          : null,
      body: body ??
          Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              "Page",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(22),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home),
            Icon(Icons.compass_calibration),
            Icon(Icons.person_pin_circle_outlined),
          ],
        ),
      ),
    );
  }
}
