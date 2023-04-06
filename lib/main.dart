import 'package:food_delivery/shared/theme.dart';
import 'package:food_delivery/state_util.dart';
import 'package:flutter/material.dart';

import 'module/auth/login/view/login_view.dart';

void main() {
  runApp(const MyApp(titleApp: 'Food Delivery App'));
}

class MyApp extends StatelessWidget {
  final String titleApp;
  const MyApp({super.key, required this.titleApp});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titleApp,
      navigatorKey: Get.navigatorKey,
      theme: getDefaultTheme(),
      home: const LoginView(),
    );
  }
}
