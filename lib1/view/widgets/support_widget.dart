import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/fonts.dart';
import '../utils/txtStyle.dart';

class SupportWidget extends StatelessWidget {
  const SupportWidget({super.key,this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                text?? "I have been charged higher than the estimated fare",
                style: applyFonts(
                    fontweight: FontWeight.w600,
                    size: 12.sp,
                    color: ColorConst.c47413E,
                    fontName: GetFonts.petroSansemi),
              ),
              Icon(Icons.arrow_forward_ios_outlined,size: 11.sp,color: ColorConst.c484040,)
              ],);
  }
}