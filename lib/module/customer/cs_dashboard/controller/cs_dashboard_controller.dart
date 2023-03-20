import 'package:flutter/material.dart';
import 'package:food_delivery/state_util.dart';
import '../view/cs_dashboard_view.dart';

class CsDashboardController extends State<CsDashboardView> implements MvcController {
  static late CsDashboardController instance;
  late CsDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}