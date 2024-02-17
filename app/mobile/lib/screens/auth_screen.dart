import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/layouts/empty_layout.dart';
import 'package:mobile/router/routes.dart';
import 'package:mobile/screens/home_screen.dart';
import 'package:mobile/screens/login_screen.dart';
import 'package:mobile/screens/register_screen.dart';
import 'package:mobile/widgets/button_custom.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmptyLayout(
      padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
      child: Column(
        children: [
          Center(
            child: Image(
              image: AssetImage("assets/images/logo_auth.png"),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              "Just keep on vibin’",
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
          Expanded(child: SizedBox.shrink()),
          ButtonCustom(
            text: "Sign Up",
            onPressed: () {
              Get.to(
                () => RegisterScreen(),
                transition: Transition.rightToLeft,
              );
            },
            textStyleCustom: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16),
          ButtonCustom(
            text: "Sign In",
            onPressed: () {
              Get.to(
                () => LoginScreen(),
                transition: Transition.rightToLeft,
              );
            },
            textStyleCustom: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.75),
            ),
            backgroundColor: Colors.transparent,
            borderColor: Colors.white,
            borderRadius: 100,
            borderWidth: 2,
          ),
          SizedBox(height: 16),
          ButtonCustom(
            text: "Continue with Google",
            onPressed: () {},
            textStyleCustom: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.75),
            ),
            backgroundColor: Colors.transparent,
            borderColor: Colors.white,
            borderRadius: 100,
            borderWidth: 2,
            icon: ImageIcon(
              AssetImage("assets/images/google_icon.png"),
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          ButtonCustom(
            text: "Guest",
            onPressed: () {
              Get.to(
                () => HomeScreen(),
                transition: Transition.fade,
              );
            },
            textStyleCustom: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.75),
            ),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
