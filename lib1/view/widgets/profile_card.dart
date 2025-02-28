
import 'package:car_care/view/utils/colors.dart';
import 'package:car_care/view/utils/fonts.dart';
import 'package:car_care/view/utils/images.dart';
import 'package:car_care/view/utils/txtStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 import 'horiz_divider.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard(
      {super.key,
      this.onClickProfile,
      required this.email,
      required this.rating,
      required this.name});
  final Function()? onClickProfile;
  final String? name;
  final String? email;
  final double? rating;
  // final ActivityController _controll = Get.put(ActivityController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1.w, color: ColorConst.c1D9B57),
          borderRadius: BorderRadius.circular(7.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            InkWell(
              onTap: onClickProfile,
              child: Row(
                children: [
                  SizedBox(
                    height: 44.h,
                    width: 44.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.r),
                      child: Image.asset(
                        ImageConstant().setImage("profile.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name!,
                          textAlign: TextAlign.center,
                          style: applyFonts(
                              fontweight: FontWeight.w400,
                              size: 14.sp,
                              color: ColorConst.c544C4C,
                              fontName: GetFonts.aeonik),
                        ),

                        SizedBox(height: 4.h),
                        // Text(
                        //   "+91 123 456 7890",
                        //   textAlign: TextAlign.center,
                        //   style: applyFonts(
                        //       fontweight: FontWeight.w400,
                        //       size: 12.sp,
                        //       color: ColorConst.c979797,
                        //       fontName: GetFonts.aeonik),
                        // ),
                        SizedBox(height: 2.h),
                        Text(
                          email!,
                          textAlign: TextAlign.center,
                          style: applyFonts(
                              fontweight: FontWeight.w400,
                              size: 12.sp,
                              color: ColorConst.c979797,
                              fontName: GetFonts.aeonik),
                        ),
                      ],
                    ),
                  )),
                  Container(
                      decoration: BoxDecoration(
                          // color: ColorConst.cE6E6E6,
                          borderRadius: BorderRadius.circular(30.r)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 2.h, horizontal: 0.w),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 11.sp,
                              color: ColorConst.c080808,
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            const VerticalDevider(),
            SizedBox(height: 10.h),
            Row(
              children: [
                SizedBox(width: 14.w),
                Icon(
                  Icons.star,
                  color: ColorConst.cF7C54F,
                  size: 18.sp,
                ),
                SizedBox(width: 22.w),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Text(
                      //   "${_controll.driverRating}  My Rating",
                      //   textAlign: TextAlign.center,
                      //   style: applyFonts(
                      //       fontweight: FontWeight.w500,
                      //       size: 12.sp,
                      //       color: ColorConst.c3E3838,
                      //       fontName: GetFonts.aeonik),
                      // ),
                      Text(
                        "$rating ",
                        // "4.5  My Rating",
                        textAlign: TextAlign.center,
                        style: applyFonts(
                            fontweight: FontWeight.w500,
                            size: 12.sp,
                            color: ColorConst.c3E3838,
                            fontName: GetFonts.aeonik),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 11.sp,
                  color: ColorConst.c080808,
                )
              ],
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
