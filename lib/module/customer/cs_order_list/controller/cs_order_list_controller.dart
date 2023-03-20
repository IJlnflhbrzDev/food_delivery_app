import 'package:flutter/material.dart';
import 'package:food_delivery/state_util.dart';
import '../view/cs_order_list_view.dart';

class CsOrderListController extends State<CsOrderListView> implements MvcController {
  static late CsOrderListController instance;
  late CsOrderListView view;

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