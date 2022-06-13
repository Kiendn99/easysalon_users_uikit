import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../_shared/_shared.dart';
import 'network_image.dart';

class CircleNetworkImage extends StatelessWidget {
  final String imageUrl;
  LayoutSize size;
  final String placeholderImage;
  CircleNetworkImage({
    Key? key,
    required this.imageUrl,
    required this.size,
    this.placeholderImage = AppImages.imageSalonAvaDefault,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: DefaultNetworkImage(
        imageUrl: imageUrl,
        placeholderImage: placeholderImage,
        width: LayoutNotifier().sizeToShapeSize(size).h,
        height: LayoutNotifier().sizeToShapeSize(size).h,
      ),
    );
  }
}
