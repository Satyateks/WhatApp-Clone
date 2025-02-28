import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/images.dart';
import '../controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final ctr = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          ImageConstant().setImage("splashScreen1.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
