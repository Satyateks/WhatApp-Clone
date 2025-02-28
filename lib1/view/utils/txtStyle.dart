import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'fonts.dart';

TextStyle h1Stl(color) {
  return TextStyle(
    color: color,
    fontSize: 40.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 2,
    fontFamily: 'AmpleMedium',
  );
}

TextStyle h2Stl(color) {
  return TextStyle(
    color: color,
    fontSize: 34.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 2,
    fontFamily: 'AmpleMedium',
  );
}

TextStyle h3Stl(color) {
  return TextStyle(
    color: color,
    fontSize: 23.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 1,
    fontFamily: 'AmpleMedium',
  );
}

TextStyle b1Stl(color, {double? size}) {
  return TextStyle(
    color: color,
    fontSize: size ?? 14.sp,
    fontWeight: FontWeight.w400,
  );
}

TextStyle underLineT2Stl(color) {
  return TextStyle(
    color: color,
    decoration: TextDecoration.underline,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
}

TextStyle b10TxtStyle(color) {
  return TextStyle(
    color: color,
    fontSize: 10.sp,
    fontWeight: FontWeight.w300,
  );
}

TextStyle b9TxtStyle(color) {
  return TextStyle(
    color: color,
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
  );
}

TextStyle b11TxtStyle(color) {
  return TextStyle(
    color: color,
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
  );
}

TextStyle b12TxtStyle(color) {
  return TextStyle(
    color: color,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
}

TextStyle tempPrcStyl(color, {double? size}) {
  return TextStyle(
      color: color,
      fontSize: size ?? 12.sp,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.lineThrough);
}

TextStyle btnTxtStl(color) {
  return TextStyle(
    color: color,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
}

TextStyle homeHardTxtStl(color) {
  return TextStyle(
      color: color ?? Colors.black,
      fontSize: 12.sp,
      fontWeight: FontWeight.w700);
}

TextStyle applyFonts(
    {double? size, color, FontWeight? fontweight, fontName, double? height}) {
  return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: fontweight,
      decoration: TextDecoration.none,
      height: height ?? 1.04,
      fontFamily: fontName);
}

TextStyle petroSansTrial40(
    {Color? color, double? size, double? height, FontWeight? fontweight}) {
  return applyFonts(
      height: height ?? 1.04,
      color: color ?? ColorConst.c080808,
      size: size ?? 40.sp,
      fontweight: fontweight ?? FontWeight.w600,
      fontName: GetFonts.petrosemi);
}

TextStyle petroSansSemi24({Color? color, double? size}) {
  return applyFonts(
      color: color ?? ColorConst.c080808,
      size: size ?? 24.sp,
      fontweight: FontWeight.w600,
      fontName: GetFonts.petroSansemi);
}
