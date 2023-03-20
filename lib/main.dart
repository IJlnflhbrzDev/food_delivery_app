import 'package:food_delivery/state_util.dart';
import 'package:flutter/material.dart';

import 'module/customer/cs_dashboard/view/cs_dashboard_view.dart';

// import 'package:food_delivery/shared/theme/theme.dart';

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
      navigatorKey: Get.navigatorKey,
      // theme: getDefaultTheme(),
      home: const CsDashboardView(),
    );
  }
}
