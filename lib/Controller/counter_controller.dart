import 'package:get/get.dart';

class CounterController extends GetxController {
  var num = 0.obs;

  void increment() {
    num++;
  }

  void decrement() {
    num--;
  }

  void reset() {
    num.value = 0;
  }
}
