import 'package:easysalon_users_app/_shared/services/image_assets_path_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../_shared/_shared.dart';

class TextFormFieldDefault extends StatelessWidget {
  final String hintText;
  final String? prefixIcon;
  final String? suffixIcon;
  final int minLines;
  final TextStyle? textStyle;
  final TextInputType? keyboardType;
  final int? maxLines;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool hideText;
  final EdgeInsetsGeometry? contentPadding;
  final Function()? suffixIconOnTap;
  final maxLength;
  final counterText;
  const TextFormFieldDefault(
      {Key? key,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.validator,
      this.controller,
      this.hideText = false,
      this.suffixIconOnTap,
      this.maxLines = 1,
      this.minLines = 1,
      this.contentPadding,
      this.keyboardType,
      this.textStyle,
      this.maxLength,
      this.counterText
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.red,
      cursorWidth: 1,
      cursorHeight: 22.h,
      controller: controller,
      obscureText: hideText,
      keyboardType: keyboardType,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      textAlignVertical: TextAlignVertical.center,
      style: textStyle ?? AppTextStyle.smallRegular(),
      validator: validator,
      decoration: InputDecoration(
          counterText: counterText,
          filled: true,
          alignLabelWithHint: true,
          contentPadding: contentPadding ??
              CustomEdgeInsets.only(
                top: LayoutSize.medium,
                bottom: LayoutSize.medium,
                left: LayoutSize.large,
                right: LayoutSize.medium,
              ),
          hintStyle: textStyle ?? AppTextStyle.smallRegular(),
          hintText: hintText,
          isDense: true,
          suffixIcon: suffixIcon == null
              ? null
              : Container(
                  margin: CustomEdgeInsets.only(right: LayoutSize.small),
                  child: GestureDetector(
                    onTap: suffixIconOnTap,
                    child: SvgPicture.asset(
                      suffixIcon!.getSVGImageAssets,
                    ),
                  ),
                ),
          suffixIconConstraints: BoxConstraints(
              maxHeight: LayoutNotifier().sizeToIconSize(LayoutSize.big)),
          prefixIcon: prefixIcon == null
              ? null
              : Container(
                  margin: CustomEdgeInsets.symmetric(
                    horizontal: LayoutSize.small,
                  ),
                  child: SvgPicture.asset(
                    prefixIcon!.getSVGImageAssets,
                  ),
                ),
          prefixIconConstraints: BoxConstraints(
              maxHeight: LayoutNotifier().sizeToIconSize(LayoutSize.big)),
          fillColor: AppColors
              .solitude /* theme.getColor(ThemeColor.superLightGrey) */,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                LayoutNotifier().sizeToBorderRadiusSize(LayoutSize.small),
              ),
              borderSide: BorderSide.none)),
    );
  }
}
