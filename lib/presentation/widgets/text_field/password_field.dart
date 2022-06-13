import 'package:easysalon_users_app/presentation/widgets/text_field/text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../_shared/configs/icons/app_icon_image.dart';

class PassWordTextFormField extends StatefulWidget {
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  PassWordTextFormField({
    Key? key,
    required this.hintText,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  State<PassWordTextFormField> createState() => _PassWordTextFormFieldState();
}

class _PassWordTextFormFieldState extends State<PassWordTextFormField> {
  bool hideText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldDefault(
      hintText: widget.hintText,
      hideText: hideText,
      suffixIcon: hideText ? AppImages.icHidePass : AppImages.icShowPass,
      suffixIconOnTap: () => setState(() {
        hideText = !hideText;
      }),
      validator: widget.validator,
      controller: widget.controller,
    );
  }
}
