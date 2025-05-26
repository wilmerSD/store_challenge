import 'package:app_market_challenge/core/routes/app_routes_name.dart';
import 'package:flutter/material.dart';

class NavigatorHelp {
  static void goToLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutesName.LOGIN);
  }

  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutesName.HOME);
  }

  static void goToRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutesName.REGISTER);
  }
  // static void goToLayoutRemoveUntil(BuildContext context) {
  //   Navigator.pushNamedAndRemoveUntil(
  //     context,
  //     AppRoutesName.LAYOUT,
  //     (Route<dynamic> route) => false,
  //   );
  // }

  }


