import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_demo/pages/report/controller/report_controller.dart';

class UserInfo extends GetView<ReportController> {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListTile(
        title: const Text(
          "Hola Mateo",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        subtitle: const Text(
          "Ultima session 12/May/2021",
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.network(
            "https://img1.baidu.com/it/u=2977473392,2126931838&fm=26&fmt=auto",
            width: 40.0,
            height: 40.0,
          ),
        ),
      ),
    );
  }
}
