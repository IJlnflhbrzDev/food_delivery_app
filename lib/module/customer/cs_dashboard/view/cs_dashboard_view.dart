import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';
import '../controller/cs_dashboard_controller.dart';

class CsDashboardView extends StatefulWidget {
  const CsDashboardView({Key? key}) : super(key: key);

  Widget build(context, CsDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CsDashboard"),
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
  State<CsDashboardView> createState() => CsDashboardController();
}