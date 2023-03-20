import 'package:flutter/material.dart';
import 'package:food_delivery/state_util.dart';
import '../view/dr_main_navigation_view.dart';

class DrMainNavigationController extends State<DrMainNavigationView> implements MvcController {
  static late DrMainNavigationController instance;
  late DrMainNavigationView view;

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