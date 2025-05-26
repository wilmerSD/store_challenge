
import 'package:app_market_challenge/app/ui/views/home/home_view.dart';
import 'package:app_market_challenge/app/ui/views/login/login_view.dart';
import 'package:app_market_challenge/app/ui/views/register/register_view.dart';
import 'package:app_market_challenge/core/routes/app_routes_name.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutesName.REGISTER: (context) => const RegisterView(),
      AppRoutesName.LOGIN: (context) => const LoginView(),
      AppRoutesName.HOME: (context) => const HomeView(),
    };
  }
}
