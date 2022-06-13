import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key,required this.name}) : super(key: key);
  final name;
  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}