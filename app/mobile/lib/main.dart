import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/router/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.auth,
      getPages: getPages,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0x001e1e1e),
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.inter(fontSize: 16),
        ),
      ),
    );
  }
}
