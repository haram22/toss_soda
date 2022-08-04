import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle title1({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
      fontSize: responsible ? 26.sp : 26,
      fontWeight: FontWeight.bold,
      fontFamily: 'Main',
      color: color,
      height: height);
}

TextStyle title2({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
      fontSize: responsible ? 22.sp : 22,
      fontWeight: FontWeight.bold,
      fontFamily: 'Main',
      color: color,
      height: height);
}

TextStyle title3({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
      fontSize: responsible ? 20.sp : 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Main',
      color: color,
      height: height);
}

TextStyle subtitle1({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
      fontSize: responsible ? 14.sp : 14,
      fontWeight: FontWeight.bold,
      fontFamily: 'Main',
      color: color,
      height: height);
}

TextStyle subtitle12({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
      fontSize: responsible ? 18.sp : 18,
      fontWeight: FontWeight.w500,
      fontFamily: 'Main',
      color: color,
      height: height);
}

TextStyle body1({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
      fontSize: responsible ? 18.sp : 18,
      fontWeight: FontWeight.w700,
      fontFamily: 'Main',
      color: color,
      height: height);
}

TextStyle body2({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
      fontSize: responsible ? 17.sp : 17,
      fontWeight: FontWeight.w500,
      fontFamily: 'Main',
      color: color,
      height: height);
}

TextStyle body3({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
      fontSize: responsible ? 14.sp : 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'Main',
      color: color,
      height: height);
}

TextStyle body4({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
      fontSize: responsible ? 18.sp : 18,
      fontWeight: FontWeight.w400,
      fontFamily: 'Main',
      color: color,
      height: height);
}

TextStyle button1({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
      fontSize: responsible ? 14.sp : 14,
      fontWeight: FontWeight.w600,
      fontFamily: 'Main',
      color: color,
      height: height);
}

TextStyle button2({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
      fontSize: responsible ? 18.sp : 18,
      fontWeight: FontWeight.w600,
      fontFamily: 'Main',
      color: color,
      height: height);
}

TextStyle appbar({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
      fontSize: responsible ? 12.sp : 12,
      fontWeight: FontWeight.w600,
      fontFamily: 'Main',
      color: color,
      height: height);
}
