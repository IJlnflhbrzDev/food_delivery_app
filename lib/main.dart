import 'package:flutter/material.dart';
import 'package:food_delivery/module/dashboard/view/dashboard_view.dart';
import 'package:food_delivery/shared/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: getDefaultTheme(),
      home: const DashboardView(),
    );
  }
}
