import 'package:get/get.dart';
import 'package:mobile/screens/auth_screen.dart';
import 'package:mobile/screens/sign_in_screen.dart';
import 'package:mobile/screens/sign_up_screen.dart';

class Routes {
  static String auth = '/auth';
  static String signUp = '/sign-up';
  static String signIn = '/sign-in';
}

final getPages = [
  GetPage(name: Routes.auth, page: () => const AuthScreen()),
  GetPage(name: Routes.signUp, page: () => const SignUpScreen()),
  GetPage(name: Routes.signIn, page: () => const SignInScreen())
];
