import 'package:counter_with_getx/Modal/ThemeModal/data_theme.dart';
import 'package:counter_with_getx/View/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller/theme_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeController.isDark.value ? darkTheme : lightTheme,
        home: CounterScreen(),
      );
    },);
  }
}
