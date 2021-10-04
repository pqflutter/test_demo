import 'package:get/get.dart';
import 'package:test_demo/pages/report/data/report_item_entity.dart';

class ReportController extends SuperController<List<ReportItemEntity>> {

  @override
  void onInit() {
    super.onInit();

    append(() => _request);
  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }


  Future<List<ReportItemEntity>> _request() async {
    await Future.delayed(1.seconds);
    return testData;
  }
}