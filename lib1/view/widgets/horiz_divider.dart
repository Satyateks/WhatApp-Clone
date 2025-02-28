import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class VerticalDevider extends StatelessWidget {
  const VerticalDevider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConst.cD9D9D9,
      height: 0.6.h,
      width: double.infinity,
    );
  }
}
