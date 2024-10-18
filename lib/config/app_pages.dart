import 'package:get/get.dart';

import 'package:web_uit_base/presentation/home/home_binding.dart';
import 'package:web_uit_base/presentation/home/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static const appInitialRoute = AppRoutes.home;

  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
