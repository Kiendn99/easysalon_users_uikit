import 'package:easysalon_users_app/_shared/services/layout_notifier.dart';
import 'package:easysalon_users_app/_shared/services/theme_notifier.dart';
import 'package:easysalon_users_app/_shared/widgets/basic/panel.dart';
import 'package:easysalon_users_app/_shared/widgets/layout/header_bar.dart';
import 'package:easysalon_users_app/_shared/widgets/layout/space.dart';
import 'package:easysalon_users_app/_shared/widgets/layout/standard_page.dart';
import 'package:easysalon_users_app/_shared/widgets/navigation/menu/menu.dart';
import 'package:easysalon_users_app/_shared/widgets/typography/paragraph.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static String pagePath = "/";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _headerBar() {
    return HeaderBar(
      title: Paragraph(
        content: 'Easysalon user app'.toUpperCase(),
        isCenter: true,
        bold: true,
        linePadding: LayoutSize.none,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      header: _headerBar(),
      children: [
        Panel(
          shadow: false,
          color: ThemeColor.weak,
          child: SpaceBox(
            all: true,
            child: Column(
              children: [
                Menu(
                  label: "Basic",
                  children: [
                    // MenuItem(label: "Paragraph", to: ParagraphPage.path),
                    // MenuItem(label: "Icon", to: IconPage.path),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
