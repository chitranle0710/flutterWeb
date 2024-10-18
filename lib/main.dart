import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'config/app_pages.dart';
import 'global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.appInitialRoute,
        getPages: AppPages.pages,
        theme: primaryTheme,
        navigatorObservers: [navigationObserver],
        scaffoldMessengerKey: rootScaffoldMessengerKey,
        navigatorKey: navigatorKey);
  }
}
