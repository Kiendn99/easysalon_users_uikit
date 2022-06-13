import 'package:easysalon_users_app/_shared/services/image_assets_path_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../_shared/_shared.dart';

class BasicIcon extends StatelessWidget {
  final String? svgIcon;
  final IconData? icon;
  final Color? color;
  final LayoutSize? size;

  const BasicIcon({Key? key, this.svgIcon, this.icon, this.color, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: svgIcon != null ? true : false,
      child: SvgPicture.asset(
        "$svgIcon".getSVGImageAssets,
        height: size == null ? null : LayoutNotifier().sizeToIconSize(size!),
        color: color,
      ),
      replacement: Icon(
        icon,
        color: color,
        size: size == null ? null : LayoutNotifier().sizeToIconSize(size!),
      ),
    );
  }
}
