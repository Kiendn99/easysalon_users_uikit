import 'package:easysalon_users_app/_shared/configs/icons/line_icons.dart';
import 'package:easysalon_users_app/_shared/services/layout_notifier.dart';
import 'package:easysalon_users_app/_shared/services/theme_notifier.dart';
import 'package:easysalon_users_app/_shared/widgets/basic/button_group.dart';
import 'package:easysalon_users_app/_shared/widgets/basic/shape.dart';
import 'package:easysalon_users_app/_shared/widgets/icons/CustomIcon.dart';
import 'package:easysalon_users_app/_shared/widgets/layout/header_bar.dart';
import 'package:easysalon_users_app/_shared/widgets/layout/scroll_listener.dart';
import 'package:easysalon_users_app/_shared/widgets/layout/space.dart';
import 'package:easysalon_users_app/_shared/widgets/layout/standard_page.dart';
import 'package:easysalon_users_app/_shared/widgets/typography/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IconPage extends StatefulWidget {
  static const String path = '/pages/widgets/icon_page';

  const IconPage({Key? key}) : super(key: key);

  @override
  _IconPageState createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  Widget _basicIcon() {
    return Column(
      children: [
        Paragraph(
          content: "Sizing",
          size: LayoutSize.large,
          weight: FontWeight.bold,
          color: ThemeColor.secondary,
        ),
        ButtonGroup(
          children: [
            CustomIcon(icon: LineIcons.shopping_bag_alt, size: LayoutSize.tiny),
            CustomIcon(
                icon: LineIcons.shopping_bag_alt, size: LayoutSize.small),
            CustomIcon(
                icon: LineIcons.shopping_bag_alt, size: LayoutSize.medium),
            CustomIcon(
              icon: LineIcons.shopping_bag_alt,
              size: LayoutSize.large,
            ),
            CustomIcon(
              icon: LineIcons.shopping_bag_alt,
              size: LayoutSize.big,
            ),
            CustomIcon(
              icon: LineIcons.shopping_bag_alt,
              // size: LayoutSize.bigest,
            )
          ],
        )
      ],
    );
  }

  Widget _shapeIcon() {
    return Column(
      children: [
        Paragraph(
          content: "With shape",
          size: LayoutSize.large,
          weight: FontWeight.bold,
          color: ThemeColor.secondary,
        ),
        ButtonGroup(children: [
          Shape(
              child: CustomIcon(
            icon: LineIcons.trophy,
            color: ThemeColor.light,
          )),
          Shape(
            child: CustomIcon(icon: LineIcons.trophy, color: ThemeColor.light),
            circle: true,
            color: ThemeColor.warning,
          ),
        ])
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
        scrollListener: ScrollListener(onScrollToBottom: () {}),
        header: HeaderBar(
            leading: InkWell(
                onTap: (() => Navigator.pop(context)),
                child: CustomIcon(icon: LineIcons.arrow_left)),
            title: Paragraph(
              content: 'Icons'.toUpperCase(),
              isCenter: true,
              bold: true,
              linePadding: LayoutSize.none,
            ),
            action: SizedBox(width: 30)),
        children: [
          SpaceBox(
              all: true,
              child: Column(children: [
                SpaceBox(
                    size: LayoutSize.big, bottom: true, child: _basicIcon()),
                SpaceBox(
                    size: LayoutSize.big, bottom: true, child: _shapeIcon()),
              ]))
        ]);
  }
}
