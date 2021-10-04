import 'package:get/get.dart';
import 'package:test_demo/pages/report/controller/report_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportController());
  }
}