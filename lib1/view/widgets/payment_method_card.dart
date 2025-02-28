import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/fonts.dart';
import '../utils/images.dart';
import '../utils/txtStyle.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({
    super.key,
    this.imagePath,
    this.text,
    this.index,
    this.value,
    this.onClickCard,
    this.isOnlyCard,
    required this.isSelected,
    this.topText,
  });

  final String? text;
  final String? topText;
  final String? imagePath;
  final int? index;
  final int? value;
  final bool? isOnlyCard;
  final bool isSelected; 
  final Function()? onClickCard;

  @override
  Widget build(BuildContext context) {
    return isOnlyCard == true
        ? InkWell(
            onTap: onClickCard,
            child: Container(
              color: isSelected
                  ? ColorConst.c1D9B57
                  : Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.h,
                      child: Image.asset(
                        ImageConstant()
                            .setImage(imagePath ?? "hostpot_image.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Text(
                        text ?? "Online Payment",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: isSelected ? Colors.white : ColorConst.c413939,
                        ),
                      ),
                    ),
                    Container(
                      height: 14.h,
                      width: 14.h,
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.w, color: const Color.fromARGB(255, 248, 12, 12)),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(1.r),
                        child: Container(
                          decoration: BoxDecoration(
                            color: value == index
                                ? ColorConst.c1D9B57
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  topText ?? "Online Payment",
                  style: applyFonts(
                    fontweight: FontWeight.w600,
                    size: 16,
                    color: Colors.black,
                    fontName: GetFonts.petroSansemi,
                  ),
                ),
              ),
              InkWell(
                onTap: onClickCard,
                child: Card(
                  elevation: 3.r,
                  shadowColor: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected
                          ? ColorConst.c1D9B57
                          : Colors.white, // Change background color if selected
                      border: Border.all(color: ColorConst.cF1F1F1, width: 1.w),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 14.h),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20.h,
                            child: Image.asset(
                              ImageConstant()
                                  .setImage(imagePath ?? "hostpot_image.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Text(
                              text ?? "Online Payment",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: isSelected
                                    ? Colors.white
                                    : ColorConst.c413939,
                              ),
                            ),
                          ),
                          Container(
                            height: 14.h,
                            width: 14.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.w, color: ColorConst.c898989),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(1.r),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: value == index
                                      ? ColorConst.c1D9B57
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
