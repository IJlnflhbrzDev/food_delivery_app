import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';
import '../controller/dr_main_navigation_controller.dart';

class DrMainNavigationView extends StatefulWidget {
  const DrMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, DrMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DrMainNavigation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<DrMainNavigationView> createState() => DrMainNavigationController();
}