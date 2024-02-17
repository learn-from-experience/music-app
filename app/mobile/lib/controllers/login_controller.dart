import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/home_screen.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? onValidateEmail(String? val) {
    if (!GetUtils.isEmail(val ?? "")) {
      return "Email is invalid";
    }
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
    final user = {
      "email": emailController.value.text,
      "password": passwordController.value.text,
    };
    print("User: ${user.toString()}");

    Get.offAll(
      () => HomeScreen(),
      transition: Transition.fadeIn,
    );
  }
}
