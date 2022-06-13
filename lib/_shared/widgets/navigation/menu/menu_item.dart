import 'package:easysalon_users_app/_shared/services/layout_notifier.dart';
import 'package:easysalon_users_app/_shared/widgets/icons/customIcon.dart';
import 'package:easysalon_users_app/_shared/widgets/layout/space.dart';
import 'package:easysalon_users_app/_shared/widgets/typography/paragraph.dart';
import 'package:flutter/material.dart';

class CustomMenuItem extends StatelessWidget {
  CustomMenuItem({required this.label, this.icon, this.to});

  final String label;
  final Widget? icon;
  final String? to;

  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: () {
              if (this.to != null) {
                Navigator.pushNamed(context, to!);
              }
            },
            child: SpaceBox(
                all: true,
                size: LayoutSize.medium,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      this.icon != null
                          ? SpaceBox(right: true, child: this.icon)
                          : Container(),
                      Expanded(
                          child: Paragraph(
                              content: this.label,
                              bold: true,
                              linePadding: LayoutSize.none)),
                      CustomIcon(icon: Icons.chevron_right)
                    ],
                  ),
                ))));
  }
}