import 'package:get/get.dart';

class CounterController extends GetxController {
  var num = 0.obs;
  RxInt count = 0.obs;
  RxString name = "Aayush".obs;

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
