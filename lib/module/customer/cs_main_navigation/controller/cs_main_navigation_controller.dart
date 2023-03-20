import 'package:flutter/material.dart';
import 'package:food_delivery/state_util.dart';
import '../view/cs_main_navigation_view.dart';

class CsMainNavigationController extends State<CsMainNavigationView> implements MvcController {
  static late CsMainNavigationController instance;
  late CsMainNavigationView view;

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