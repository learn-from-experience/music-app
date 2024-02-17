import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/controllers/register_controller.dart';
import 'package:mobile/layouts/empty_layout.dart';
import 'package:mobile/widgets/button_custom.dart';
import 'package:mobile/widgets/input_custom.dart';

class RegisterScreen extends StatelessWidget {
  final RegisterController _registerController = RegisterController();

  RegisterScreen({Key? key}) : super(key: key);

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
              key: _registerController.formKey,
              child: Column(
                children: [
                  Text(
                    "Sign Up",
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
                    validator: _registerController.onValidateEmail,
                    controller: _registerController.emailController,
                  ),
                  InputCustom(
                    hint: "Enter your name",
                    prefixIcon: Icons.person,
                    validator: _registerController.onValidateName,
                    controller: _registerController.nameController,
                  ),
                  InputCustom(
                    hint: "Enter your password",
                    prefixIcon: Icons.lock,
                    isHiddenText: true,
                    validator: _registerController.onValidatePassword,
                    controller: _registerController.passwordController,
                  ),
                  InputCustom(
                    hint: "Enter confirm password",
                    prefixIcon: Icons.lock,
                    isHiddenText: true,
                    validator: _registerController.onValidateConfirmPassword,
                    controller: _registerController.confirmPasswordController,
                  ),
                  SizedBox(height: 10),
                  ButtonCustom(
                    text: "Sign Up",
                    onPressed: () {
                      _registerController.onSave();
                    },
                    borderRadius: 10,
                    textStyleCustom: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
