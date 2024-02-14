import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/router/routes.dart';
import 'package:mobile/widgets/ButtonRounded.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(height: 60),
                Center(
                  child:
                      Image(image: AssetImage("assets/images/logo_auth.png")),
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
                ButtonRounded(
                  text: "Sign Up",
                  onPressed: () {
                    Get.toNamed(Routes.signUp);
                  },
                  textStyleCustom: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16),
                ButtonRounded(
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
                ButtonRounded(
                  text: "Sign In",
                  onPressed: () {
                    Get.toNamed(Routes.signIn);
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
            )),
      ),
    );
  }
}
