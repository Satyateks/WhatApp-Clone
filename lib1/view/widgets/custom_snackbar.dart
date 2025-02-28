import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../utils/txtStyle.dart';

class SnackBars {

  static showAlertSnackBar({required text}) {
    //if(Get.isOverlaysOpen) Get.close(1);
    return Get.rawSnackbar(
      message: text,
      snackStyle: SnackStyle.GROUNDED,
      margin: EdgeInsets.zero,
      snackPosition: SnackPosition.BOTTOM,
      messageText: Text(text,style: b1Stl(Colors.white),),
    );
  }
  static showErrorSnackBar({required text}) {
    //if(Get.isOverlaysOpen) Get.close(1);
    return Get.rawSnackbar(
      message: text,
      backgroundColor: Colors.red.shade500,
      snackStyle: SnackStyle.GROUNDED,
      margin: EdgeInsets.zero,
      snackPosition: SnackPosition.BOTTOM,
      messageText: Text(text,style: b1Stl(Colors.white),),
    );
  }
  static showSuccessSnackBar({required text, SnackPosition? snackPosition}) {
    //if(Get.isOverlaysOpen) Get.close(1);
    return Get.rawSnackbar(
      message: text,
      backgroundColor: Colors.green.shade500,
      snackStyle: SnackStyle.GROUNDED,
      margin: EdgeInsets.zero,
      snackPosition: snackPosition ?? SnackPosition.BOTTOM,
      messageText: Text(text,style: b1Stl(Colors.white),),
    );
  }
}