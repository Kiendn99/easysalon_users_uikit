import 'package:easysalon_users_app/_shared/configs/configs.dart';
import 'package:flutter/material.dart';

import 'full_width_button_default.dart';

class GreenFullWidthButton extends StatelessWidget {
  final String label;
  final String? prefixIcon;
  void Function()? onPressed;

  GreenFullWidthButton({Key? key, required this.label, this.prefixIcon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FullWidthButtonDefault(
      key: key,
      label: label,
      prefixIcon: prefixIcon,
      backgroundColor: AppColors.caribbeanGreen,
      onPressed: onPressed,
    );
  }
}
