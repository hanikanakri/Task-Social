import 'package:flutter/material.dart';
import 'package:task_social_app/core/constants/app_assets.dart';
import 'package:task_social_app/core/constants/app_colors.dart';
import 'package:task_social_app/core/constants/app_theme.dart';
import 'package:task_social_app/core/widgets/custom_image.dart';
import 'package:task_social_app/core/widgets/custom_text_field.dart';

class CommentsCard extends StatelessWidget {
  CommentsCard({super.key});

  List<String> comments = [
    'ssssssssssss',
    'sssssssssssssssssssssssssss',
    'ssssssssssssssssssssssssssskkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk',
    "ggffggggggggggg",
    "mmmmmmmmmmmmmm",
    "eeeeeee",
  ];

  List<String> personName = [
    'hani',
    'adnan',
    'ahmad',
    "noor",
    "lubna",
    "reem",
  ];

  List<String> persons = [
    AppAssets.stories1Home,
    AppAssets.stories2Home,
    AppAssets.stories3Home,
    AppAssets.stories4Home,
    AppAssets.stories5Home,
    AppAssets.stories6Home,
    AppAssets.stories7Home,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            height: MediaQuery.of(context).size.height * 0.8,
            color: AppColors.white,
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CustomImage.circular(
                      radius: 50,
                      image: persons[index],
                      svg: false,
                      viewInFullScreen: true,
                      isNetworkImage: false,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.lightGrey,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              personName[index],
                              style: AppTheme.headline.copyWith(
                                color: AppColors.black,
                              ),
                            ),
                            Text(
                              comments[index],
                              style: AppTheme.bodySmall.copyWith(
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  const Expanded(
                    child: CustomTextField(hintText: "hintText"),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.black,)
                      ),
                      padding: const EdgeInsets.all( 12.0),
                      child: Icon(Icons.comment),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
