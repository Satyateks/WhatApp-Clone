import 'dart:async';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    checkLogged();
    // var id = await SharedPreLocalStorage.getUserID();
    // print("user---id--->>>$id");
    super.onInit();
  }

  checkLogged() async {
    await Future.delayed(const Duration(seconds: 3));
    // var token = await SharedPreLocalStorage.getToken();
    // Get.off(() => LanguageScreen());
    // if (token.isNotEmpty) {
    //   ApiService.init();
    //   var storage = StoredUserData();
    //   String? userType = await storage.getSelectedUserType();
    //   if (userType == "user") {
    //     Get.off(() => const BaseScreenCustomer());
    //   } else {
    //     Get.off(() => const BaseScreenDriver());
    //   }
    // } else {
    //   Get.off(() => LanguageScreen());
    // }
  }
}
