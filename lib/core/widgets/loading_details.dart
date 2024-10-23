// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';
//
// import '/core/animations/grid_view_animation.dart';
// import '/core/constants/app_colors.dart';
// import '/core/constants/app_theme.dart';
// import '/core/widgets/buttons/main_elevated_button.dart';
// import '/core/widgets/custom_image.dart';
// import '/core/widgets/custom_text_rich.dart';
//
// class LoadingDetails extends StatelessWidget {
//   const LoadingDetails({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Shimmer(
//       gradient: LinearGradient(
//         colors: [Colors.white, Colors.grey.shade300, Colors.white],
//         stops: const [0.0, 0.5, 1.0],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           ...[
//             SizedBox(
//               height: 400,
//               width: double.infinity,
//               child: GridViewAnimation(
//                 columnCount: 2,
//                 gridLength: 4,
//                 itemBuilder: (BuildContext context, int index1) {
//                   return GridListAnimation(
//                     index: index1,
//                     child: CustomCard(
//                       child: CustomImage.rectangle(
//                         image: '',
//                         isNetworkImage: true,
//                         svg: false,
//                         viewInFullScreen: true,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               margin: const EdgeInsets.all(5),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12), color: Colors.red),
//               child: Text(
//                 "name".tr(),
//                 style: AppTheme.headline,
//                 textAlign: TextAlign.start,
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12.0),
//                 color: AppColors.greyApp,
//               ),
//               child: Text(
//                 " ******",
//                 style: AppTheme.bodySmall.copyWith(
//                   color: AppColors.black,
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               margin: const EdgeInsets.all(5),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12), color: Colors.red),
//               child: Text(
//                 "description".tr(),
//                 style: AppTheme.headline,
//                 textAlign: TextAlign.start,
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(
//                 vertical: 10,
//                 horizontal: 5,
//               ),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12.0),
//                 color: AppColors.greyApp,
//               ),
//               child: const Text(
//                 "there_is_no_description",
//               ),
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 CustomTextRich(
//                   mainText: "price",
//                   secondText: " ******",
//                 ),
//                 CustomTextRich(
//                   mainText: "old_price",
//                   secondText: " ******",
//                 ),
//               ],
//             ),
//             Center(
//               child: MainElevatedButton(
//                 onPressed: () {
//                   // PaymentManager.makePayment(model.price!, "usd");
//                 },
//                 text: 'order_it_now'.tr(),
//               ),
//             ),
//           ].expand(
//             (element) => [
//               element,
//               const Padding(
//                 padding: EdgeInsets.symmetric(
//                   vertical: 10,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
