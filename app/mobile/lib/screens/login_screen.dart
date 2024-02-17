import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/controllers/login_controller.dart';
import 'package:mobile/layouts/empty_layout.dart';
import 'package:mobile/widgets/button_custom.dart';
import 'package:mobile/widgets/input_custom.dart';

class LoginScreen extends StatelessWidget {
  final LoginController _loginController = Get.put(LoginController());

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmptyLayout(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/images/logo_auth.png"),
            ),
            SizedBox(height: 100),
            Form(
              key: _loginController.formKey,
              child: Column(
                children: [
                  Text(
                    "Sign In",
                    style: GoogleFonts.inter(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  InputCustom(
                    hint: "Enter your email",
                    prefixIcon: Icons.email,
                    validator: _loginController.onValidateEmail,
                    controller: _loginController.emailController,
                  ),
                  InputCustom(
                    hint: "Enter your password",
                    prefixIcon: Icons.lock,
                    isHiddenText: true,
                    validator: _loginController.onValidatePwd,
                    controller: _loginController.passwordController,
                  ),
                  SizedBox(height: 10),
                  ButtonCustom(
                    text: "Sign In",
                    onPressed: () {
                      _loginController.onSave();
                    },
                    borderRadius: 10,
                    textStyleCustom: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
