import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_demo/pages/report/controller/report_controller.dart';
import 'package:test_demo/pages/report/data/report_item_entity.dart';

class OrderList extends GetView<ReportController> {
  const OrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 60.0),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(40.0)),
          color: Colors.black38.withOpacity(0.3),
          boxShadow: [
            BoxShadow(
                color: Colors.white24.withOpacity(0.1),
                offset: const Offset(0, -2)),
          ]),
      child: Column(
        children: [
          _top(),
          const SizedBox(height: 30.0),
          Expanded(child: _listView()),
        ],
      ),
    );
  }

  Widget _top() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Reportes",
          style: TextStyle(
              fontSize: 25, color: Colors.white38, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white38,
            ),
          ),
        )
      ],
    );
  }

  Widget _listView() {
    if (controller.value == null) {
      return SizedBox.shrink();
    }

    return ListView.builder(
      itemBuilder: (context, index) {
        return _buildListItem(controller.value![index]);
      },
      itemCount: controller.value!.length,
    );
  }

  Widget _buildListItem(ReportItemEntity entity) {
    Widget _leftLayout() {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.only(right: 16.0),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Image.asset(entity.asset, width: 20, height: 20),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entity.title,
                  style: const TextStyle(fontSize: 16, color: Colors.white38),
                ),
                Text(
                  entity.subtitle,
                  style: const TextStyle(fontSize: 12, color: Colors.white38),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget _rightLayout() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            entity.date,
            style: const TextStyle(fontSize: 14, color: Colors.white38),
          ),
          Text(
            entity.moneyText,
            style: TextStyle(
                fontSize: 14,
                color: entity.isPositiveIncome ? Colors.green : Colors.red),
          ),
        ],
      );
    }

    return Row(
      children: [
        Expanded(child: _leftLayout()),
        Expanded(child: _rightLayout())
      ],
    );
  }
}
