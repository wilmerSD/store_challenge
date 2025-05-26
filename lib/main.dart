import 'package:app_market_challenge/app/ui/views/home/home_controller.dart';
import 'package:app_market_challenge/app/ui/views/login/login_controller.dart';
import 'package:app_market_challenge/app/ui/views/register/register_controller.dart';
import 'package:app_market_challenge/app/ui/views/register/register_view.dart';
import 'package:app_market_challenge/core/routes/app_routes_map.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<RegisterController>(
          create: (_) => RegisterController(),
        ),
        ChangeNotifierProvider<LoginController>(
          create: (_) => LoginController(),
        ),
        ChangeNotifierProvider<HomeController>(create: (_) => HomeController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Market Challenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const RegisterView(),
      routes: AppRoutes.routes,
    );
  }
}
