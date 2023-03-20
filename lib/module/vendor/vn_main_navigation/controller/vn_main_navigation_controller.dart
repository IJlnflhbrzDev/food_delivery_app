import 'package:flutter/material.dart';
import 'package:food_delivery/state_util.dart';
import '../view/vn_main_navigation_view.dart';

class VnMainNavigationController extends State<VnMainNavigationView> implements MvcController {
  static late VnMainNavigationController instance;
  late VnMainNavigationView view;

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