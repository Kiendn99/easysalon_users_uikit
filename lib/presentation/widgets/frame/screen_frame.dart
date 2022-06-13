import 'package:easysalon_users_app/_shared/configs/configs.dart';
import 'package:flutter/material.dart';

import '../../../../_shared/_shared.dart';
import '../bar/app_bar.dart';

class ScreenFrame extends StatelessWidget {
  final String? title;
  final PreferredSizeWidget? appBar;
  final LayoutSize horizontalPadding;
  final LayoutSize verticalPadding;
  final Widget? body;
  final List<Widget> children;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;

  ScreenFrame({
    Key? key,
    this.title,
    this.children = const <Widget>[],
    this.appBar,
    this.horizontalPadding = LayoutSize.medium,
    this.verticalPadding = LayoutSize.tiny,
    this.backgroundColor,
    this.body,
    this.bottomNavigationBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: title != null ? DefaultAppBar(titleAppBar: title) : appBar,
        body: body ??
            ListView(
              padding: CustomEdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              children: children,
            ),
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
