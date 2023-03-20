import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';
import '../controller/vn_dashboard_controller.dart';

class VnDashboardView extends StatefulWidget {
  const VnDashboardView({Key? key}) : super(key: key);

  Widget build(context, VnDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("VnDashboard"),
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
  State<VnDashboardView> createState() => VnDashboardController();
}