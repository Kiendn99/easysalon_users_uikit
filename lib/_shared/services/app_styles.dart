import 'package:flutter/material.dart';

const String FONT_FAMILY_ROBOTO = "Roboto";

const FONT_SIZE_VERY_SMALL = 12.0;
const FONT_SIZE_SMALL = 13.0;
const FONT_SIZE_MEDIUM = 15.0;
const FONT_SIZE_LARGE = 16.0;
const FONT_SIZE_BIG = 22.0;

const TEXT_HEIGHT = 1.2;

const STYLE_VERY_SMALL = TextStyle(
    fontSize: FONT_SIZE_VERY_SMALL,
    height: TEXT_HEIGHT,
    fontFamily: FONT_FAMILY_ROBOTO);
const STYLE_SMALL = TextStyle(
    fontSize: FONT_SIZE_SMALL,
    height: TEXT_HEIGHT,
    fontFamily: FONT_FAMILY_ROBOTO);
const STYLE_MEDIUM = TextStyle(
    fontSize: FONT_SIZE_MEDIUM,
    height: TEXT_HEIGHT,
    fontFamily: FONT_FAMILY_ROBOTO);
const STYLE_LARGE = TextStyle(
    fontSize: FONT_SIZE_LARGE,
    height: TEXT_HEIGHT,
    fontFamily: FONT_FAMILY_ROBOTO);
const STYLE_BIG = TextStyle(
    fontSize: FONT_SIZE_BIG,
    height: TEXT_HEIGHT,
    fontFamily: FONT_FAMILY_ROBOTO);

const STYLE_VERY_SMALL_BOLD = TextStyle(
    fontSize: FONT_SIZE_VERY_SMALL,
    height: TEXT_HEIGHT,
    fontFamily: FONT_FAMILY_ROBOTO,
    fontWeight: FontWeight.bold);
const STYLE_SMALL_BOLD = TextStyle(
    fontSize: FONT_SIZE_SMALL,
    height: TEXT_HEIGHT,
    fontFamily: FONT_FAMILY_ROBOTO,
    fontWeight: FontWeight.bold);
const STYLE_MEDIUM_BOLD = TextStyle(
    fontSize: FONT_SIZE_MEDIUM,
    height: TEXT_HEIGHT,
    fontFamily: FONT_FAMILY_ROBOTO,
    fontWeight: FontWeight.bold);
const STYLE_LARGE_BOLD = TextStyle(
    fontSize: FONT_SIZE_LARGE,
    height: TEXT_HEIGHT,
    fontFamily: FONT_FAMILY_ROBOTO,
    fontWeight: FontWeight.bold);
const STYLE_BIG_BOLD = TextStyle(
    fontSize: FONT_SIZE_BIG,
    height: TEXT_HEIGHT,
    fontFamily: FONT_FAMILY_ROBOTO,
    fontWeight: FontWeight.bold);
extension GetOrientation on BuildContext {
  Orientation get orientation => MediaQuery.of(this).orientation;
}

extension GetSize on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}
