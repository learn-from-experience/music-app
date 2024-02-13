import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 60),
            Center(
              child: Image(image: AssetImage("assets/images/logo_auth.png")),
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
          ],
        ),
      ),
    );
  }
}
