# Counter and Theme Change App using GetX

This repository contains a simple Flutter application that demonstrates the use of GetX for state management and theme switching. The app includes a counter that increments with a button press and a toggle switch to change the app theme between light and dark modes.

## Features

- Increment counter functionality.
- Toggle switch to change themes between light and dark.
- GetX for efficient state management.

## Table of Contents

1. [Introduction to GetX](#introduction-to-getx)
2. [Benefits of Using GetX](#benefits-of-using-getx)
3. [Code Explanation](#code-explanation)
4. [Usage](#usage)
5. [App Structure](#app-structure)
6. [Code Explanation](#code-explanation)
7. [Conclusion](#conclusion)


<details> 
  <summary><h2>📸Photos</h2></summary>
  <p>
    <table align="center">
  <tr>
    <td><img src="https://github.com/user-attachments/assets/ba3f952d-0490-498b-88ea-efd0288ac631" alt="Image 2" width="180" height="auto"></td>
    <td><img src="https://github.com/user-attachments/assets/66d40a65-83d4-47a9-afff-169d88c38c25" alt="Image 2" width="180" height="auto"></td>
  </tr>
    </table>    
  </p>
  </details>
  <details> 
  <summary><h2>📽️Video</h2></summary>
  <p>
    <table align="center">
  <tr>
    <video src ="https://github.com/user-attachments/assets/94adc243-cd6f-464f-9111-fe9cf66f0e58"></video> </h1>
  </tr>
    </table>   
  </p>
  </details>

## Introduction to GetX

GetX is an extra-light and powerful solution for Flutter. It's a complete package that provides state management, intelligent dependency injection, and route management. Developed by Jonny Borges, GetX simplifies many tasks associated with building Flutter applications, such as state management, dependency injection, and navigation, in a clean and efficient manner.

## Understanding GetX in Flutter

### Introduction to GetX

GetX is an extra-light and powerful solution for Flutter. It's a complete package that provides state management, intelligent dependency injection, and route management. Developed by Jonny Borges, GetX simplifies many tasks associated with building Flutter applications, such as state management, dependency injection, and navigation, in a clean and efficient manner.

### Key Features of GetX

1. **State Management**: GetX provides a reactive state management solution that is both simple and highly efficient.
2. **Dependency Injection**: It offers an easy way to manage dependencies and make them available throughout the app.
3. **Route Management**: GetX simplifies navigation and routing, reducing boilerplate code and making the app’s navigation flow easier to understand and manage.
4. **Performance**: GetX is designed to be lightweight and high-performing, making it suitable for large-scale applications.
5. **Reactive Programming**: It supports reactive programming, allowing the app to react to changes in real-time.
6. **Simple API**: GetX has a simple and easy-to-learn API that helps in rapid development.

### Benefits of Using GetX

#### 1. **Simplicity**
GetX simplifies the management of state, dependencies, and routing in Flutter applications. The simplicity of its API reduces the learning curve and makes it easy for developers to implement complex functionalities with minimal code.

#### 2. **Performance**
GetX is highly performant due to its lightweight nature and efficient handling of state and dependencies. It avoids unnecessary rebuilds and updates only the specific parts of the UI that need to change, which significantly improves the app’s performance.

#### 3. **Ease of Use**
The intuitive and consistent API of GetX makes it easy to use, even for beginners. The documentation is comprehensive, and there are many community resources available for learning and troubleshooting.

#### 4. **Scalability**
GetX’s modular approach allows for easy scalability. It can be used for small projects and large-scale applications alike. The ability to organize code into separate modules helps in maintaining and scaling the application as it grows.

#### 5. **Dependency Management**
GetX provides a powerful dependency injection system that makes it easy to manage and inject dependencies across the application. This promotes better code organization and testability.

#### 6. **Reactive Programming**
With GetX, implementing reactive programming is straightforward. It allows developers to create applications that respond to changes in data in real-time, enhancing the user experience.

### Core Concepts of GetX

#### 1. **Reactive State Management**
GetX’s state management is based on reactive programming. It provides a `GetBuilder` widget for simple state management and `GetX`/`Obx` widgets for reactive state management.

- **GetBuilder**: Used for simple state updates. It doesn't need to rebuild the widget tree, hence improving performance.
- **GetX/Obx**: Used for reactive state updates. It listens to changes in the state and rebuilds the UI accordingly.

#### 2. **Dependency Injection**
GetX makes dependency injection straightforward with its `Get.put`, `Get.lazyPut`, and `Get.find` methods.

- **Get.put**: Instantiates and provides the dependency immediately.
- **Get.lazyPut**: Lazily instantiates the dependency when it is first used.
- **Get.find**: Finds and retrieves the dependency when needed.

#### 3. **Route Management**
GetX’s routing mechanism simplifies navigation by reducing boilerplate code and making the navigation logic easier to manage.

- **Get.to**: Navigates to a new page.
- **Get.back**: Goes back to the previous page.
- **Get.off**: Replaces the current page with a new one.
- **Get.offAll**: Removes all previous pages and navigates to a new page.

### Conclusion

GetX is a powerful and versatile solution for Flutter applications, providing a wide range of functionalities such as state management, dependency injection, and route management. Its simplicity, performance, and ease of use make it an excellent choice for developers looking to streamline their Flutter development process.

## Usage

Run the app using the following command:

```bash
flutter run
```

## App Structure

```
lib/
|-- main.dart
|-- controllers/
|   |-- counter_controller.dart
|   |-- theme_controller.dart
|-- views/
    |-- home_view.dart
```

## Code Explanation

### main.dart

```dart
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
    return Obx(
      () {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeController.isDark.value ? darkTheme : lightTheme,
          home: CounterScreen(),
        );
      },
    );
  }
}

```

### counter_controller.dart

```dart
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
```

### theme_controller.dart

```dart
import 'package:counter_with_getx/Modal/ThemeModal/data_theme.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  var isDark = false.obs;

  void toggleTheme() {
    isDark.value = !isDark.value;
    Get.changeTheme(isDark.value ? darkTheme : lightTheme);
  }
}
```

### home_view.dart

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';
import '../controllers/theme_controller.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    final ThemeController themeController = Get.put(ThemeController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter and Theme Change App'),
        actions: [
          Obx(() => Switch(
                value: themeController._isDarkMode.value,
                onChanged: (value) {
                  themeController.toggleTheme();
                },
              ))
        ],
      ),
      body: Center(
        child: Obx(() => Text(
              'Counter: ${counterController.count}',
              style: TextStyle(fontSize: 24),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
```

## Conclusion

This project demonstrates how to use GetX for state management and theme switching in a simple Flutter application. By leveraging the power of GetX, we achieve efficient state management with minimal code, making the app more maintainable and scalable.

Feel free to contribute to this project by submitting issues or pull requests.
