import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/images.dart';

// ignore: must_be_immutable
class Signinopbtnwidget extends StatelessWidget {
  Signinopbtnwidget({super.key, this.imgName});
  String? imgName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          border: Border.all(color: Colors.black, width: 1.5.h)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Center(
          child: SizedBox(
              height: 40.h,
              width: 90.w,
              child: Image.asset(
                  ImageConstant().setImage(imgName ?? "fIcon.png"))),
        ),
      ),
    );
  }
}
