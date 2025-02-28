import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/images.dart';
import '../utils/txtStyle.dart';

class Couponscard extends StatelessWidget {
  Couponscard({super.key, this.imagePath, this.text});
  final String? imagePath;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: ColorConst.inputFillColor,
                // borderRadius: BorderRadius.circular(10.r)
                ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 6.w,
                      ),
                      SizedBox(
                        height: 20.h,
                        width: 30.h,
                        child: Image.asset(
                          ImageConstant()
                              .setImage(imagePath ?? "eRikshafull_Icon.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text ?? "No Text",
                            style: b11TxtStyle(Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 9.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15.sp,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 12.w,
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
