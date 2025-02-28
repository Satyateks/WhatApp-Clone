import 'package:car_care/view/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/txtStyle.dart';

class Chooseservicewidget extends StatelessWidget {
  Chooseservicewidget({super.key,this.index,this.function1,this.currentIndex,this.centerText});

final int? index;
final int? currentIndex;
final String? centerText;
 final Function()? function1;
//  final Function()? function2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: function1,
        child: Stack(
          children: [
           
            Container(
              decoration: BoxDecoration(
                color: index==currentIndex? Colors.white:ColorConst.cF0F6FB,
                  border:
                      Border.all(width: 0.7.h, color:index==currentIndex? ColorConst.greenColr:ColorConst.cD9D9D9),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Row(
                children: [
                  
                  Expanded(
                    child: SizedBox(
                      height: 40.h,
                      child: Center(
                          child: Text(
                        centerText??"center",
                        style: homeHardTxtStl(Colors.black),
                      )),
                    ),
                  )
                ],
              ),
            ),
          
           Align(
             alignment: Alignment.topLeft,
             child:index==currentIndex? SizedBox(
              
               child: Padding(
                 padding: EdgeInsets.only(top: 8.h,left: 8.w),
                 child: Image.asset(ImageConstant().setImage("check_image.png"),height: 12.h,width: 12.h,)
               ),
             ):const SizedBox(),
           ),
          ],
        ),
      ),
    );
  }
}
