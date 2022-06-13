import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../_shared.dart';

class CustomEdgeInsets extends EdgeInsets {
  CustomEdgeInsets.only({
    LayoutSize top = LayoutSize.none,
    LayoutSize bottom = LayoutSize.none,
    LayoutSize right = LayoutSize.none,
    LayoutSize left = LayoutSize.none,
  }) : super.only(
          top: LayoutNotifier().sizeToPadding(top).h,
          bottom: LayoutNotifier().sizeToPadding(bottom).h,
          right: LayoutNotifier().sizeToPadding(right).w,
          left: LayoutNotifier().sizeToPadding(left).w,
        );

  CustomEdgeInsets.symmetric({
    LayoutSize horizontal = LayoutSize.none,
    LayoutSize vertical = LayoutSize.none,
  }) : super.symmetric(
          vertical: LayoutNotifier().sizeToPadding(vertical).h,
          horizontal: LayoutNotifier().sizeToPadding(horizontal).w,
        );
}
