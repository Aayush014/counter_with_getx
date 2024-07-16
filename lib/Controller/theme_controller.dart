import 'package:counter_with_getx/Modal/ThemeModal/data_theme.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController{

  var isDark = false.obs;

  void toggleTheme(){
    isDark.value = !isDark.value;
    Get.changeTheme(isDark.value ? darkTheme :lightTheme);
  }


}