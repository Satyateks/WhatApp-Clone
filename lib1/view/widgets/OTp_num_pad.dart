import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class OtpNumPad extends StatelessWidget {
  const OtpNumPad({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.w,
      width: 36.w,
      decoration: BoxDecoration(
          color: ColorConst.c1D9B57, borderRadius: BorderRadius.circular(5.r)),
      child: Center(
        child: Text(
          text ?? '',
          style: GoogleFonts.inter(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp),
        ),
      ),
    );
  }
}
