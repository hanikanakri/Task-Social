import 'package:flutter/material.dart';

import '/core/constants/app_assets.dart';
import '/core/widgets/custom_image.dart';
import '/feature/home/presentation/pages/first_post.dart';
import '/feature/home/presentation/pages/second_post.dart';
import '/feature/home/presentation/pages/stories.dart';
import '/feature/home/presentation/pages/third_post.dart';
import '/feature/home/presentation/widgets/general_home_page_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralHomePageScaffold(
      showAppBar: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 75.0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            //flexibleSpace: ,
            leading: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomImage.rectangle(
                  image: AppAssets.vectorHome,
                  isNetworkImage: false,
                  svg: false,
                  viewInFullScreen: false,
                ),
              ),
            ),
            title: CustomImage.rectangle(
              image: AppAssets.sociallyHome,
              isNetworkImage: false,
              svg: false,
              viewInFullScreen: false,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) {
                return Column(
                  children: [
                    Stories(),
                    const FirstPost(),
                    const SecondPost(),
                    const ThirdPost(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
