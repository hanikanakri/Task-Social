import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_svg/svg.dart';

import '/core/constants/app_assets.dart';
import '/core/utils/navigation.dart';
import '/core/widgets/cached_image.dart';
import '/core/widgets/image_place_holder.dart';
import '/core/widgets/view_image.dart';

class CustomImage extends StatelessWidget {
  final double? cornerRadius;
  final bool viewInFullScreen;
  final double? width;
  final double? height;
  final dynamic image;
  final Widget? placeHolder;
  final bool isNetworkImage;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;

  final BoxFit? fit;
  final bool? svg;

  const CustomImage._(
      {this.cornerRadius,
      this.viewInFullScreen = false,
      this.image,
      this.width,
      this.padding,
      this.margin,
      this.height,
      this.placeHolder,
      this.isNetworkImage = true,
      this.decoration,
      this.color,
      this.fit,
      this.svg});

  factory CustomImage.circular(
          {required double radius,
          required dynamic image,
          bool viewInFullScreen = false,
          Widget? placeHolder,
          EdgeInsetsGeometry? margin,
          EdgeInsetsGeometry? padding,
          BoxDecoration? decoration,
          isNetworkImage = true,
          Color? color,
          BoxFit? fit,
          svg = false}) =>
      CustomImage._(
        viewInFullScreen: viewInFullScreen,
        image: image,
        cornerRadius: radius,
        height: radius,
        width: radius,
        isNetworkImage: isNetworkImage,
        svg: svg,
        margin: margin,
        padding: padding,
        placeHolder: placeHolder,
        decoration: decoration,
        color: color,
        fit: fit,
      );

  factory CustomImage.rectangle({
    double? cornerRadius,
    required dynamic image,
    bool viewInFullScreen = false,
    double? width,
    double? height,
    Widget? placeHolder,
    BoxDecoration? decoration,
    BoxFit? fit,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    Color? color,
    isNetworkImage = false,
    svg = false,
  }) =>
      CustomImage._(
        image: image,
        viewInFullScreen: viewInFullScreen,
        cornerRadius: cornerRadius,
        height: height,
        width: width,
        color: color,
        padding: padding,
        margin: margin,
        isNetworkImage: isNetworkImage,
        placeHolder: placeHolder,
        decoration: decoration ?? const BoxDecoration(),
        fit: fit ?? BoxFit.contain,
        svg: svg,
      );

  viewImageInFullScreen(context) async {
    final Image imageFile;
    if (isNetworkImage) {
      final fileInfo = await DefaultCacheManager().getFileFromCache(image);
      imageFile = Image.file(fileInfo!.file);
      Navigation.push(context, ViewImage(image: imageFile));
    } else {
      imageFile = image is File
          /*imageFile = image is XFile*/
          ? Image.file(
              File(image.path),
              fit: fit ?? BoxFit.fill,
            )
          : Image.asset(
              image!,
              fit: fit ?? BoxFit.fill,
              color: color,
            );
      if (!svg!) {
        Navigation.push(context, ViewImage(image: imageFile));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child = Container(
      width: width,
      height: height,
      decoration: decoration,
      padding: padding,
      margin: margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(cornerRadius ?? 0.0),
        child: image == null
            ? const ImagePlaceHolder()
            : isNetworkImage == true
                ? CachedImage(
                    imageUrl: image!,
                    placeholder: placeHolder,
                    fit: fit ?? BoxFit.fill,
                  )
                : svg!
                    ? SvgPicture.asset(
                        image!,
                        color: color,
                        fit: fit ?? BoxFit.fill,
                      )
                    : image is File
                        /*: image is XFile*/
                        ? Image.file(
                            File(image.path),
                            fit: fit ?? BoxFit.fill,
                            color: color,
                          )
                        : Image.asset(
                            image!,
                            fit: fit ?? BoxFit.fill,
                            color: color,
                            errorBuilder: (context, error, stackTrace) {
                              return Image.asset(AppAssets.errorData);
                            },
                          ),
      ),
    );
    return (viewInFullScreen && !svg!)
        ? GestureDetector(
            onTap:
                viewInFullScreen ? () => viewImageInFullScreen(context) : () {},
            child: child,
          )
        : child;
  }
}
