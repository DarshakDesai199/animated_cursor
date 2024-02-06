## Animated Cursor Package

## Version: 0.0.1

## Description
    Welcome to the Animated Cursor package for Flutter! This package provides a customizable animated cursor widget that you can easily integrate into your Flutter projects.

## Installation
    To use this package, add 'animated_cursor' as a dependency in your pubspec.yaml file:

## dependencies:
    animated_cursor: ^0.0.1

## Then run:
    flutter pub get

## Usage
    To use the Animated Cursor widget in your Flutter app, import the package and add the widget to your widget tree:

## Properties
    child: Widget or Screen - The child widget beneath the animated cursor.
    cursor: MouseCursor - The cursor to be displayed when the mouse is over the child widget.
    circleColor: Color - Color of the animated circle.
    dotColor: Color - Color of the animated dot.
    backgroundColor: Color - Background color of the cursor.
    circleDuration: Duration - Duration of the animated circle's appearance.
    dotDuration: Duration - Duration of the animated dot's appearance.
    borderWidth: double - Width of the cursor's border.
    shape: CursorShape - Shape of the cursor (Circle or Rectangle).
    borderRadius: BorderRadius - Border radius for the cursor (applicable when shape is set to Rectangle).

## Example
    Here's an example of how to use the Animated Cursor widget in your Flutter app:

```dart
import 'package:animated_cursor/animated_cursor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Cursor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AnimatedCursor(
        // cursor: SystemMouseCursors.alias,
        circleColor: Colors.red,
        dotColor: Colors.red,
        backgroundColor: Colors.black,
        borderWidth: 1,
        child: Container(color: Colors.black),
      ),
    );
  }
}
```
