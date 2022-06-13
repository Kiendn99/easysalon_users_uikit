import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../_shared/_shared.dart';

class TypeComponentGroup extends StatelessWidget {
  final String type;
  final List<Widget> componentList;

  const TypeComponentGroup({Key? key, required this.type, required this.componentList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: CustomEdgeInsets.symmetric(
            vertical: (LayoutSize.medium),
          ),
          child: Text(
            type,
            style: AppTextStyle.largeMedium(color: Colors.grey),
          ),
        ),
        Wrap(
          spacing: LayoutNotifier().sizeToPadding(LayoutSize.small).w,
          runSpacing: LayoutNotifier().sizeToPadding(LayoutSize.small).h,
          children: componentList,
        ),
      ],
    );
  }
}
