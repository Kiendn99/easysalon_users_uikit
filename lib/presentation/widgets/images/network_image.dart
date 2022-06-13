import 'package:easysalon_users_app/_shared/services/image_assets_path_extension.dart';
import 'package:flutter/material.dart';

import '../../../../_shared/_shared.dart';

class DefaultNetworkImage extends StatelessWidget {
  final String placeholderImage;
  final String imageUrl;
  final LayoutSize borderRadiusAll;
  final LayoutSize borderRadiusTopLeft;
  final LayoutSize borderRadiusTopRight;
  final LayoutSize borderRadiusBottomLeft;
  final LayoutSize borderRadiusBottomRight;
  double? width;
  double? height;
  DefaultNetworkImage({
    Key? key,
    required this.placeholderImage,
    required this.imageUrl,
    this.width,
    this.height,
    this.borderRadiusAll = LayoutSize.small,
    this.borderRadiusTopLeft = LayoutSize.small,
    this.borderRadiusTopRight = LayoutSize.small,
    this.borderRadiusBottomLeft = LayoutSize.small,
    this.borderRadiusBottomRight = LayoutSize.small,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadiusAll == LayoutSize.small
          ? BorderRadius.only(
              topLeft: Radius.circular(LayoutNotifier().sizeToBorderRadiusSize(borderRadiusTopLeft)),
              topRight: Radius.circular(LayoutNotifier().sizeToBorderRadiusSize(borderRadiusTopRight)),
              bottomLeft: Radius.circular(LayoutNotifier().sizeToBorderRadiusSize(borderRadiusBottomLeft)),
              bottomRight: Radius.circular(LayoutNotifier().sizeToBorderRadiusSize(borderRadiusBottomRight)),
            )
          : BorderRadius.circular(LayoutNotifier().sizeToBorderRadiusSize(borderRadiusAll)),
      child: FadeInImage.assetNetwork(
        placeholder: placeholderImage.getPNGImageAssets,
        image: imageUrl,
        imageErrorBuilder: (context, error, stackTrace) => Image.asset(
          placeholderImage.getPNGImageAssets,
          fit: BoxFit.cover,
          width: width,
          height: height,
        ),
        fit: BoxFit.cover,
        width: width,
        height: height,
      ),
    );
  }
}
