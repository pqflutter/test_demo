import 'dart:ui';
import '../../extension/get_state_ext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_demo/pages/report/controller/report_controller.dart';
import 'package:test_demo/pages/report/views/order_info.dart';
import 'package:test_demo/pages/report/views/order_list.dart';
import 'package:test_demo/pages/report/views/user_info.dart';

class ReportPage extends GetView<ReportController> {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.myObx(
      (state) => _body(),
    );
  }

  Widget _body() {
    return Container(
        color: Colors.black87,
        child: SafeArea(
          child: Column(
            children: [
              const UserInfo(),
              _orderInfo(),
              const Expanded(child: OrderList()),
            ],
          ),
        ));
  }

  Widget _orderInfo() {
    return const Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: OrderInfo(),
    );
  }
}
