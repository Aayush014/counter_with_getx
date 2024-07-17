import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/counter_controller.dart';
import '../Controller/theme_controller.dart';

class CounterScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: 0,
          title: const Text(
            "Counter / Theme",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          actions: [
            themeAnimatedIcon(),
            const SizedBox(
              width: 15,
            )
          ]),
      body: Center(
        child: Container(
          height: 550,
          width: 350,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xffD0FD58),
                      Color(0xffFFD06A),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Obx(
                  () => Text(
                    counterController.num.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myButton(context, () {
                    counterController.decrement();
                  }, Icons.remove),
                  myButton(context, () {
                    counterController.reset();
                  }, Icons.exposure_zero),
                  myButton(context, () {
                    counterController.increment();
                  }, Icons.add),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: () {
          Get.to(const SecondScreen(), transition: Transition.circularReveal);
        },
        child: Icon(
          Icons.navigate_next,
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ),
    );
  }
}

CupertinoButton myButton(
    BuildContext context, void Function()? onPressed, IconData i1) {
  return CupertinoButton(
    padding: EdgeInsets.zero,
    child: Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        i1,
        color: Theme.of(context).colorScheme.tertiary,
      ),
    ),
    onPressed: onPressed,
  );
}

TweenAnimationBuilder<double> themeAnimatedIcon() {
  final ThemeController themeController = Get.find();
  var animationKey = UniqueKey();
  return TweenAnimationBuilder(
    key: animationKey,
    tween: Tween<double>(begin: 10, end: 30),
    duration: const Duration(milliseconds: 400),
    builder: (context, sizeValue, child) => TweenAnimationBuilder(
      key: animationKey,
      tween: Tween<double>(begin: 1, end: 6),
      duration: const Duration(milliseconds: 400),
      builder: (context, value, child) {
        return Transform.rotate(
          angle: value,
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              animationKey = UniqueKey();
              themeController.toggleTheme();
            },
            child: Icon(
              (themeController.isDark.value)
                  ? CupertinoIcons.sun_max_fill
                  : CupertinoIcons.moon,
              color: Theme.of(context).colorScheme.tertiary,
              size: sizeValue,
            ),
          ),
        );
      },
    ),
  );
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
    );
  }
}
