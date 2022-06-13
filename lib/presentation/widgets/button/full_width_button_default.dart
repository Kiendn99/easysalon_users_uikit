import 'package:flutter/material.dart';

import 'basic_button.dart';

class FullWidthButtonDefault extends StatelessWidget {
  final String label;
  final String? prefixIcon;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? colorLabel;
  final Color? prefixIconColor;
  void Function()? onPressed;

  FullWidthButtonDefault({
    Key? key,
    required this.label,
    this.prefixIcon,
    this.colorLabel,
    this.backgroundColor,
    this.onPressed,
    this.prefixIconColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BasicButton(
      label: label,
      prefixIcon: prefixIcon,
      backgroundColor: backgroundColor,
      width: MediaQuery.of(context).size.width,
      borderColor: borderColor,
      colorLabel: colorLabel,
      prefixIconColor: prefixIconColor,
      onPressed: onPressed,
    );
  }
}
