import 'package:easysalon_users_app/_shared/services/layout_notifier.dart';
import 'package:easysalon_users_app/_shared/services/theme_notifier.dart';
import 'package:easysalon_users_app/_shared/widgets/basic/panel.dart';
import 'package:easysalon_users_app/_shared/widgets/layout/space.dart';
import 'package:easysalon_users_app/_shared/widgets/typography/paragraph.dart';
import 'package:flutter/material.dart';

import 'menu_item.dart';

class Menu extends StatelessWidget {
  Menu({required this.children, this.label});

  final String? label;
  final List<CustomMenuItem> children;

  Widget build(BuildContext context) {
    return Column(children: [
      label != null
          ? Paragraph(
              content: this.label!,
              bold: true,
              size: LayoutSize.large,
              color: ThemeColor.secondary, /* ThemeColor.mediumBlue */
            )
          : Text(""),
      Panel(
        child: Column(
            children: List.generate(this.children.length, (index) {
          var child = this.children[index];
          var isLastChild = index == (this.children.length - 1);
          if (isLastChild) {
            return child;
          }

          return Column(
            children: [
              child,
              SpaceBox(
                left: true,
                child: Divider(),
              )
            ],
          );
        })),
      ),
    ]);
  }
}