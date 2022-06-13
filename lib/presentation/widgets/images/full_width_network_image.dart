import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../_shared/_shared.dart';
import 'network_image.dart';

class FullWidthNetworkImage extends StatelessWidget {
  final String imageUrl;
  double height;
  final LayoutSize borderRadiusAll;
  final LayoutSize borderRadiusTopLeft;
  final LayoutSize borderRadiusTopRight;
  final LayoutSize borderRadiusBottomLeft;
  final LayoutSize borderRadiusBottomRight;

  FullWidthNetworkImage({
    Key? key,
    required this.imageUrl,
    required this.height,
    this.borderRadiusAll = LayoutSize.small,
    this.borderRadiusTopLeft = LayoutSize.small,
    this.borderRadiusTopRight = LayoutSize.small,
    this.borderRadiusBottomLeft = LayoutSize.small,
    this.borderRadiusBottomRight = LayoutSize.small,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultNetworkImage(
      placeholderImage: AppImages.imageSalonDefault,
      imageUrl: imageUrl,
      height: height.h,
      borderRadiusAll: borderRadiusAll,
      borderRadiusTopLeft: borderRadiusTopLeft,
      borderRadiusBottomLeft: borderRadiusBottomLeft,
      borderRadiusBottomRight: borderRadiusBottomRight,
      borderRadiusTopRight: borderRadiusTopRight,
      width: MediaQuery.of(context).size.width,
    );
  }
}
