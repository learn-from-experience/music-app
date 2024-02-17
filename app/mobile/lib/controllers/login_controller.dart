import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/home_screen.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();

  String? onValidateEmail(String? val) {
    if (!GetUtils.isEmail(val ?? "")) {
      print("false");
      return "Email is invalid";
    }
    print("true");
    return null;
  }

  String? onValidatePwd(String? val) {
    if (val == null || val.trim().isEmpty) {
      return "Password is not empty";
    }

    return null;
  }

  void onSave() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    Get.offAll(
      () => HomeScreen(),
      transition: Transition.fadeIn,
    );
  }
}
