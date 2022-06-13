import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../_shared/_shared.dart';
import '../button/full_width_button_default.dart';
import '../icon/basic_icon.dart';

class ThankForRatingSheet extends StatelessWidget {
  const ThankForRatingSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: BasicIcon(
              svgIcon: AppImages.icClear,
              size: LayoutSize.large,
            ),
          ),
        ),
        SvgPicture.asset(
          AppImages.icThank.getSVGImageAssets,
          height: 251.h,
        ),
        Padding(
          padding: CustomEdgeInsets.only(
            top: LayoutSize.medium,
          ),
          child: Text(
            "Cảm ơn bạn đã gởi đánh giá",
            style: AppTextStyle.bigBold(),
          ),
        ),
        Padding(
          padding: CustomEdgeInsets.only(
            top: LayoutSize.small,
          ),
          child: Text(
            "Hãy chia sẻ những trải nghiệm thú vị của bạn tại salon với bạn bè!",
            style: AppTextStyle.mediumRegular(
              color: AppColors.rockBlue,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40.h),
          child: FullWidthButtonDefault(
            label: "Chia sẻ qua Facebook",
            prefixIcon: AppImages.icFBLogin,
            borderColor: AppColors.dodgerBlue,
            backgroundColor: Colors.white,
            prefixIconColor: AppColors.dodgerBlue,
            colorLabel: AppColors.dodgerBlue,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
