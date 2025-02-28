import 'package:car_care/view/utils/colors.dart';
import 'package:car_care/view/utils/fonts.dart';
import 'package:car_care/view/utils/images.dart';
import 'package:car_care/view/utils/txtStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class AppSettingCard extends StatelessWidget {
  const AppSettingCard(
      {super.key,
      this.leadingImage,
      this.title,
      this.subtitle,
      this.imageColor,
      this.titleTextStley,
      this.titleTextSize,
      this.titleTextColor,
      this.trailWidget,
      this.isTrailingIcon,
      this.onSingleTap});

  final String? leadingImage;
  final String? subtitle;
  final String? title;
  final bool? isTrailingIcon;
  final TextStyle? titleTextStley;
  final Color? titleTextColor;
  final Color? imageColor;
  final double? titleTextSize;
  final Widget? trailWidget;
  final Function()? onSingleTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSingleTap ?? () {},
      child: Row(
        children: [
          SizedBox(width: 14.w),
          SizedBox(
            height: 20.w,
            width: 20.w,
            child: Image.asset(
              ImageConstant().setImage(leadingImage ?? "profile.png"),
              color: imageColor,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 22.w),
          Expanded(
            child: subtitle == null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title ?? "4.5  ",
                        textAlign: TextAlign.center,
                        style: titleTextStley ??
                            GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: titleTextSize ?? 17.sp,
                              color: titleTextColor ?? ColorConst.c3E3838,
                            ),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title ?? "4.5  ",
                        textAlign: TextAlign.center,
                        style: titleTextStley ??
                            GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: titleTextSize ?? 12.sp,
                              color: titleTextColor ?? ColorConst.c3E3838,
                            ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        subtitle ?? "",
                        textAlign: TextAlign.center,
                        style: applyFonts(
                            fontweight: FontWeight.w400,
                            size: 12.sp,
                            color: ColorConst.c979797,
                            fontName: GetFonts.aeonik),
                      ),
                      SizedBox(height: 2.h),
                    ],
                  ),
          ),
          isTrailingIcon == true
              ? Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 11.sp,
                  color: ColorConst.c080808,
                )
              : trailWidget ?? const SizedBox(),
        ],
      ),
    );
  }
}
