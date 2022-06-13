import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../_shared/_shared.dart';
import '../icon/basic_icon.dart';
import '../images/circle_network_image.dart';

class DefaultAppBar extends AppBar {
  final String? titleAppBar;
  final String? salonAvaUrl;
  final String? titleTextActionButton;
  final Widget? titleWidget;
  final Widget? leadingBar;
  final bool haveBackButton;
  final List<Widget> actionWidget;
  final Color backgroundColor;
  final bool isIconClearBack;
  final List<String> iconActionButtonList;
  final TextStyle? titleTextSTyle;
  void Function()? textActionButtonOnPressed;
  List<void Function()> iconActionButtonOnPressedList;
  final LayoutSize bottomHeight;
  final Widget? bottomWidget;

  DefaultAppBar(
      {this.titleAppBar,
      this.salonAvaUrl,
      this.titleTextActionButton,
      this.haveBackButton = true,
      this.isIconClearBack = false,
      this.titleWidget,
      this.leadingBar,
      this.textActionButtonOnPressed,
      this.actionWidget = const [],
      this.backgroundColor = Colors.white,
      this.bottomHeight = LayoutSize.small,
      this.bottomWidget,
      this.titleTextSTyle,
      this.iconActionButtonList = const [],
      this.iconActionButtonOnPressedList = const []})
      : super(
          automaticallyImplyLeading: haveBackButton,
          leading: haveBackButton
              ? Row(
                  children: [
                    Visibility(
                      visible: leadingBar != null ? true : false,
                      child: leadingBar ?? SizedBox.shrink(),
                      replacement: IconButton(
                        onPressed: (){
                          //  => Navigator.pop(NavigationService.navigatorKey.currentContext!),
                        },
                        icon: BasicIcon(
                          svgIcon: isIconClearBack ? AppImages.icClear : AppImages.icBack,
                          size: LayoutSize.large,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: salonAvaUrl != null ? true : false,
                      child: Padding(
                        padding: CustomEdgeInsets.only(left: LayoutSize.tiny),
                        child: CircleNetworkImage(
                          imageUrl: "$salonAvaUrl",
                          size: LayoutSize.small,
                        ),
                      ),
                    )
                  ],
                )
              : null,
          leadingWidth: 150.w,
          backgroundColor: backgroundColor,
          centerTitle: true,
          elevation: 0,
          titleSpacing: 0,
          bottom: bottomWidget != null
              ? PreferredSize(
                  child: bottomWidget,
                  preferredSize: Size.fromHeight(
                    LayoutNotifier().sizeToShapeSize(bottomHeight).h,
                  ),
                )
              : null,
          title: Visibility(
            visible: titleAppBar != null ? true : false,
            child: Text("$titleAppBar"),
            replacement: titleWidget != null ? titleWidget : SizedBox.shrink(),
          ),
          titleTextStyle: titleTextSTyle ?? AppTextStyle.mediumBold(color: Colors.black),
          actions: [
            Visibility(
                visible: titleTextActionButton != null ? true : false,
                child: TextButton(
                  onPressed: textActionButtonOnPressed,
                  style: TextButton.styleFrom(textStyle: AppTextStyle.mediumRegular()),
                  child: Text("$titleTextActionButton"),
                )),
            Visibility(
              visible: iconActionButtonList.isNotEmpty ? true : false,
              child: Row(
                children: List.generate(
                    iconActionButtonList.length,
                    (index) => IconButton(
                          onPressed: iconActionButtonOnPressedList[index],
                          icon: BasicIcon(
                            svgIcon: iconActionButtonList[index],
                            size: LayoutSize.medium,
                          ),
                        )),
              ),
              replacement: Row(
                mainAxisSize: MainAxisSize.min,
                children: actionWidget,
              ),
            )
          ],
        );
}
