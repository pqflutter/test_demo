import 'package:get/get.dart';
import 'package:test_demo/pages/home/bindings/home_binding.dart';
import 'package:test_demo/pages/home/home_page.dart';
import 'package:test_demo/pages/report/report_page.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: Routes.HOME,
        page: () => const HomePage(),
        binding: HomeBinding(),
        children: [
          GetPage(
            name: Routes.REPORT,
            page: () => const ReportPage(),
          ),
        ]),
  ];
}
