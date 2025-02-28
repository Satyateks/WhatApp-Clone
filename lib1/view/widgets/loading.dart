import 'package:car_care/view/utils/colors.dart';
import 'package:flutter/material.dart';

showLoader(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return const Center(
        child: CircularProgressIndicator(color: ColorConst.greenColr),
      );
    },
  );
}
