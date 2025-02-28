import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/fonts.dart';
import '../utils/images.dart';
import '../utils/txtStyle.dart';

class CouponCardWidget extends StatelessWidget {
  const CouponCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
               padding:  EdgeInsets.symmetric(horizontal: 16.w),
               child: Card(
                elevation: 3,
                color: Colors.white,
                 child: Container(
                  
                 decoration: BoxDecoration(
                  
                  border: Border.all(color: ColorConst.cF1F1F1,width: 1.w),
                  borderRadius: BorderRadius.circular(8.r)),
                  child: Column(children: [
                    SizedBox(height: 10.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 4.w),
                      child: Row(children: [
                        SizedBox(width: 40.w,
                        child: Image.asset(ImageConstant().setImage("precent_image.png"),fit: BoxFit.contain, height: 24.h,width: 24.h,),),
                                    
                        Text("Flat \$ 10% OFF",style: applyFonts(fontweight: FontWeight.w600,size: 14.sp,color: ColorConst.c181616,fontName: GetFonts.petroSansemi),)
                      ],),
                    ),
                    Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 4.w),
                      child: Row(children: [
                        SizedBox(width: 40.w,
                        ),
                                    
                        Text("Get 10% off on your first ride",style: GoogleFonts.inter(fontSize: 12.sp,fontWeight: FontWeight.w500,color: ColorConst.c1D9B57),)
                      ],),
                    ),
                    SizedBox(height: 20.h,),
                    Container(height: 30.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorConst.c1D9B57,
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(8.r),bottomRight:Radius.circular(8.r))),
                      child:Center(
                        child: Text("TAP TO APPLY",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 13.sp),),
                      ) ,
                      
                    )
                  
                  ],),
                 ),
               ),
             );
  }
}