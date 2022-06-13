import 'package:easysalon_users_app/_shared/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../_shared/_shared.dart';
import '../icon/basic_icon.dart';

class BasicButton extends StatelessWidget {
  final String label;
  final String? prefixIcon;
  final double? width;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? colorLabel;
  final LayoutSize prefixIconSize;
  final TextStyle? labelTextStyle;
  final LayoutSize verticalPadding;
  final LayoutSize horizontalPadding;
  final double borderWidth;
  final VisualDensity? visualDensity;
  final LayoutSize spacingBetweenPrefixAndLabel;
  final LayoutSize borderRadius;
  final Color? prefixIconColor;
  void Function()? onPressed;

  BasicButton({
    Key? key,
    required this.label,
    this.prefixIcon,
    this.width,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth = 1,
    this.colorLabel,
    this.labelTextStyle,
    this.prefixIconColor,
    this.prefixIconSize = LayoutSize.medium,
    this.verticalPadding = LayoutSize.small,
    this.visualDensity,
    this.borderRadius = LayoutSize.small,
    this.spacingBetweenPrefixAndLabel = LayoutSize.small,
    this.onPressed,
    this.horizontalPadding = LayoutSize.medium,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
              visible: prefixIcon == null ? false : true,
              child: Container(
                  margin: CustomEdgeInsets.only(
                    right: spacingBetweenPrefixAndLabel,
                  ),
                  child: BasicIcon(
                    svgIcon: prefixIcon,
                    size: prefixIconSize,
                    color: prefixIconColor,
                  ))),
          Text(label),
        ],
      ),
      style: ElevatedButton.styleFrom(
          fixedSize: width == null
              ? null
              : Size(
                  width!.w,
                  LayoutNotifier().sizeToShapeSize(LayoutSize.large).h,
                ),
          textStyle: labelTextStyle ?? AppTextStyle.mediumMedium(),
          onPrimary: colorLabel,
          primary: backgroundColor,
          visualDensity: visualDensity,
          padding: CustomEdgeInsets.symmetric(
            horizontal: horizontalPadding,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              LayoutNotifier().sizeToBorderRadiusSize(borderRadius),
            ),
            side: borderColor != null
                ? BorderSide(
                    width: borderWidth,
                    color: borderColor!,
                  )
                : BorderSide.none,
          )),
    );
  }
}
