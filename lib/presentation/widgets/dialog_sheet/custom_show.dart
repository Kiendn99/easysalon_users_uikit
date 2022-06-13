import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../_shared/_shared.dart';

class CustomShow {
  static showAlertDialog({
    String? titleText,
    Widget? titleWidget,
    Widget? contentWidget,
    String? contentText,
    void Function()? onConfirm,
    void Function()? onCancel,
    String? confirmText,
    String? cancelText,
    List<Widget>? actions,
   required BuildContext context,
  }) =>
      showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          insetPadding: CustomEdgeInsets.symmetric(horizontal: LayoutSize.large),
          title: titleText != null ? Text(titleText, textAlign: TextAlign.center) : titleWidget,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(LayoutNotifier().sizeToBorderRadiusSize(LayoutSize.medium))),
          content: contentText != null ? Text(contentText, textAlign: TextAlign.center) : contentWidget,
          titleTextStyle: AppTextStyle.mediumMedium(color: AppColors.darkest),
          contentTextStyle: AppTextStyle.mediumRegular(color: AppColors.rockBlue),
          actionsPadding: EdgeInsets.zero,
          buttonPadding: EdgeInsets.zero,
          actions: cancelText != null && confirmText != null
              ? [
                  Column(
                    children: [
                      Divider(
                        height: 0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                              onPressed: onCancel,
                              child: Text(
                                cancelText,
                                style: AppTextStyle.mediumMedium(color: AppColors.rockBlue),
                              )),
                          SizedBox(height: 50.h, child: VerticalDivider(width: 0)),
                          TextButton(
                              onPressed: onConfirm,
                              child: Text(
                                confirmText,
                                style: AppTextStyle.mediumMedium(color: AppColors.dodgerBlue),
                              )),
                        ],
                      ),
                    ],
                  ),
                ]
              : actions,
        ),
      );

  static showBottomSheet({required List<Widget> children, EdgeInsets padding = EdgeInsets.zero}) => showModalBottomSheet<void>(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(LayoutNotifier().sizeToBorderRadiusSize(LayoutSize.medium)),
          topRight: Radius.circular(LayoutNotifier().sizeToBorderRadiusSize(LayoutSize.medium)),
        )),
        context: NavigationService.navigatorKey.currentContext!,
        builder: (context) => Padding(
          padding: padding,
          child: SingleChildScrollView(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: children,
          )),
        ),
      );
}
