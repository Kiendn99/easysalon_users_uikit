import 'package:easysalon_users_app/_shared/services/layout_notifier.dart';
import 'package:easysalon_users_app/_shared/services/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    Key? key,
    this.leading,
    this.action,
    this.title,
    this.titleColor = ThemeColor.dark,
    this.titleSize = LayoutSize.large,
    this.bottomChildren,
    this.backgroundColor = ThemeColor.lightest,
    this.border,
    this.shadow,
  }) : super(key: key);

  final Widget? leading;
  final Widget? action;
  final Widget? title;
  final LayoutSize titleSize;
  final ThemeColor titleColor;
  final List<Widget>? bottomChildren;
  final ThemeColor backgroundColor;
  final BoxBorder? border;
  final List<BoxShadow>? shadow;

  @override
  Widget build(BuildContext context) {
    var theme = context.read<ThemeNotifier>().getTheme();
    var layout = context.read<LayoutNotifier>();

    return SafeArea(
      top: true,
      bottom: false,
      left: false,
      right: false,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(layout.sizeToPadding(LayoutSize.small)),
            decoration: BoxDecoration(
                color: theme.getColor(backgroundColor), boxShadow: shadow),
            child: Column(
              children: [
                Row(
                  children: [
                    if (leading != null) leading!,
                    if (title != null) Expanded(child: title!),
                    if (action != null) action!,
                  ],
                ),
              ],
            ),
          ),
          if (bottomChildren != null)
            Container(
                decoration: BoxDecoration(
                    color: theme.getColor(backgroundColor), boxShadow: shadow),
                child: Column(children: [...bottomChildren!])),
        ],
      ),
    );
  }
}
