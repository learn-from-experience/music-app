import 'package:get/get.dart';
import 'package:mobile/screens/auth_screen.dart';
import 'package:mobile/screens/home_screen.dart';
import 'package:mobile/screens/login_screen.dart';
import 'package:mobile/screens/register_screen.dart';

class Routes {
  static const String home = '/';
  static const String auth = '/auth';
  static const String signUp = '/sign-up';
  static const String signIn = '/sign-in';
}

final getPages = [
  GetPage(name: Routes.auth, page: () => AuthScreen()),
  GetPage(name: Routes.signUp, page: () => RegisterScreen()),
  GetPage(name: Routes.signIn, page: () => LoginScreen()),
  GetPage(name: Routes.home, page: () => HomeScreen()),
];
