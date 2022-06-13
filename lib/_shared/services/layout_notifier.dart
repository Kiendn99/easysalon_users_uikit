import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum LayoutSize { none, superTiny, tiny, small, medium, large, big, biggest }

class LayoutNotifier /*  with ChangeNotifier */ {
  static final LayoutNotifier _singleton = LayoutNotifier._internal();

  factory LayoutNotifier() {
    return _singleton;
  }

  LayoutNotifier._internal();

  static getLowerSize(LayoutSize layoutSize) {
    if (layoutSize == LayoutSize.small) {
      return LayoutSize.tiny;
    }
    if (layoutSize == LayoutSize.medium) {
      return LayoutSize.small;
    }
    if (layoutSize == LayoutSize.large) {
      return LayoutSize.medium;
    }
    if (layoutSize == LayoutSize.big) {
      return LayoutSize.large;
    }
    if (layoutSize == LayoutSize.biggest) {
      return LayoutSize.big;
    }
    return LayoutSize.none;
  }

  // LayoutNotifier();

  double sizeToPadding(LayoutSize layoutSize) {
    switch (layoutSize) {
      case LayoutSize.none:
        return 0.0;
      case LayoutSize.superTiny:
        return 4.0;
      case LayoutSize.tiny:
        return 8.0;
      case LayoutSize.small:
        return 12.0;
      case LayoutSize.medium:
        return 16.0;
      case LayoutSize.large:
        return 22.0;
      case LayoutSize.big:
        return 30.0;
      case LayoutSize.biggest:
      default:
        return 50.0;
    }
  }

  double sizeToShapeSize(LayoutSize layoutSize) {
    switch (layoutSize) {
      case LayoutSize.none:
        return 0.0;
      case LayoutSize.tiny:
        return 20.0;
      case LayoutSize.small:
        return 30.0;
      case LayoutSize.medium:
        return 40.0;
      case LayoutSize.large:
        return 44.0;
      case LayoutSize.big:
        return 60.0;
      case LayoutSize.biggest:
      default:
        return 73.0;
    }
  }

  double sizeToFontSize(LayoutSize layoutSize) {
    switch (layoutSize) {
      case LayoutSize.none:
        return 0.0.sp;
      case LayoutSize.tiny:
        return 10.0.sp;
      case LayoutSize.small:
        return 13.0.sp;
      case LayoutSize.medium:
        return 16.0.sp;
      case LayoutSize.large:
        return 18.0.sp;
      case LayoutSize.big:
        return 22.0.sp;
      default:
        return 30.0.sp;
    }
  }

  double sizeToIconSize(LayoutSize layoutSize) {
    switch (layoutSize) {
      case LayoutSize.none:
        return 0.0.h;
      case LayoutSize.tiny:
        return 14.0.h;
      case LayoutSize.small:
        return 18.0.h;
      case LayoutSize.medium:
        return 24.0.h;
      case LayoutSize.large:
        return 30.0.h;
      case LayoutSize.big:
        return 36.0.h;
      case LayoutSize.biggest:
      default:
        return 44.0.h;
    }
  }

  sizeToBorderRadiusSize(LayoutSize layoutSize) {
    switch (layoutSize) {
      case LayoutSize.none:
        return 0.0;
      case LayoutSize.tiny:
        return 4.r;
      case LayoutSize.small:
        return 8.r;
      case LayoutSize.medium:
        return 16.r;
      case LayoutSize.large:
        return 20.r;
      case LayoutSize.big:
      default:
        return 30.r;
    }
  }

  sizeToBorderRadius(LayoutSize layoutSize) {
    var borderRadiusSize = sizeToBorderRadiusSize(layoutSize);
    return BorderRadius.all(Radius.circular(borderRadiusSize));
  }
}
