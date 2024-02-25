import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/router/routes.dart';
import 'package:mobile/utils/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      getPages: getPages,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(ColorCustom.mainColor),
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.inter(fontSize: 16),
        ),
      ),
    );
  }
}
