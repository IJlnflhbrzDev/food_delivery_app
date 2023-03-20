import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';
import '../controller/cs_main_navigation_controller.dart';

class CsMainNavigationView extends StatefulWidget {
  const CsMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, CsMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CsMainNavigation"),
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
  State<CsMainNavigationView> createState() => CsMainNavigationController();
}