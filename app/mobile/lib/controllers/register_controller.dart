import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  String? onValidateEmail(String? val) {
    if (!GetUtils.isEmail(val ?? "")) {
      return "Email is invalid";
    }

    return null;
  }

  String? onValidateName(String? val) {
    if ((val ?? "").isEmpty) {
      return "This field is required";
    }

    return null;
  }

  String? onValidatePassword(String? val) {
    if ((val ?? "").isEmpty) {
      return "This field is required";
    }

    return null;
  }

  String? onValidateConfirmPassword(String? val) {
    if ((val ?? "").isEmpty) {
      return "This field is required";
    }

    if (val != passwordController.value.text) {
      return "Confirm password is incorrect";
    }

    return null;
  }

  void onSave() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final user = {
      "email": emailController.value.text,
      "name": nameController.value.text,
      "password": passwordController.value.text,
      "confirmPassword": confirmPasswordController.value.text,
    };
    print("User: ${user}");
  }
}
