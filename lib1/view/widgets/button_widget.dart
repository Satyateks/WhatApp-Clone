import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/txtStyle.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.isTextOnly = true,
    this.backGroundClr,
    this.buttonName,
    this.noPadding,
    this.buttonHeight,
    this.rotateAngl,
    this.onPressed,
  });

  final bool? isTextOnly;
  final bool? noPadding;
  final Color? backGroundClr;
  final VoidCallback? onPressed;
  final String? buttonName;
  final double? rotateAngl;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: noPadding == true ? 0 : 12.w),
      child: Material(
        color: Colors.transparent, // Use transparent color for the material
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(30.r), // Add border radius for ripple effect
          child: Container(
            height: buttonHeight ?? 40.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: backGroundClr ?? ColorConst.btnBackGrndClr,
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: isTextOnly == true
                ? Center(
                    child: Text(
                      buttonName ?? "Button",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        buttonName ?? "Button",
                        style: btnTxtStl(Colors.white),
                      ),
                      SizedBox(width: 3.w),
                      Transform.rotate(
                        angle: rotateAngl ?? 0.0,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.h),
                          child: Icon(
                            Icons.arrow_upward_outlined,
                            color: Colors.white,
                            size: 18.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
