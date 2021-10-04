import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_demo/pages/report/controller/report_controller.dart';

class OrderInfo extends GetView<ReportController> {
  const OrderInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        children: [
          Expanded(
              child: _item("Ingresos", "+\$3.982.000",
                  "assets/icon_right_up_arrow.png")),
          const SizedBox(width: 20.0),
          Expanded(
              child: _item("Ingresos", "-\$2.579.000",
                  "assets/icon_right_down_arrow.png")),
        ],
      ),
    );
  }

  Widget _item(String title, String subtitle, String icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 0.5),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 15, color: Colors.white),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Flexible(
                child: Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                  maxLines: 2,
                ),
              ),
              const SizedBox(width: 2.0),
              Image.asset(icon, width: 15, height: 15),
            ],
          ),
        ],
      ),
    );
  }
}
