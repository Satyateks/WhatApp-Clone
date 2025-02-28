import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class InputWidget extends StatelessWidget {
   InputWidget({super.key,this.topTxt,this.suffixIcon,this.hintText,this.controller,this.onTab,this.isReadOnly});
final String? topTxt;
final String? hintText;
final Icon? suffixIcon;
final Function()? onTab;
final bool? isReadOnly;
final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return  Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      topTxt??"top",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: ColorConst.c080808,
                          fontSize: 14.sp),
                    )),
                    SizedBox(height: 8.h,),
                TextFormField(
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      color: ColorConst.c080808,
                      fontSize: 14.sp),
                  controller: controller,
                  onTap: onTab,
                  readOnly: isReadOnly ?? false,
                  decoration: InputDecoration(
                    filled: true,
                    suffixIcon: suffixIcon,
                    hintText: hintText,
                    hintStyle: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: ColorConst.cA0A0A0,
                        fontSize: 12.sp),
                    fillColor: ColorConst.cF0F6FB,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: BorderSide.none),
                        focusedBorder: InputBorder.none
                  ),
                )
              ],
            );
  }
}