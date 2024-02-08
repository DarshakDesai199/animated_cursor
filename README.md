![Alt Text](https://fluttercommunity.dev/_github/header/Animated-Cursor)

[![View on GitHub](https://github.com/SimformSolutionsPvtLtd/flutter_showcaseview/workflows/Build/badge.svg?branch=master)](https://github.com/DarshakDesai199/animated_cursor)
[![View on GitHub](https://img.shields.io/pub/v/animated_cursor?label=animated_cursor)](https://pub.dev/packages/animated_cursor)
[![View on Linkedin](https://img.shields.io/badge/Dev:-Darshak_Desai-blue.svg)](https://in.linkedin.com/in/darshak-desai-17251823b)
[![View on Github](https://img.shields.io/pub/points/animated_cursor?color=FF474C&label=pub%20points)](https://pub.dev/packages/animated_cursor/score)

## Preview
![Alt Text](https://github.com/DarshakDesai199/animated_cursor/blob/main/screenRecoding/preview.gif)

## Animated Cursor Package

Welcome to the Animated Cursor package for Flutter! This package provides a customizable animated
cursor widget that you can easily integrate into your Flutter projects.

## Installing

Add dependency to ```pubspec.yaml```
To use the latest version of `animated_cursor`, add the following line to your `pubspec.yaml`file:

```yaml
dependencies:
  animated_cursor: ^1.0.5
```

Install it
You can install packages from the command line:
with ```Flutter```:

```shell    
$ flutter pub get
```

Import the package

```dart
import 'package:animated_cursor/animated_cursor.dart';
```

## Usage

```dart
AnimatedCursor
(
circleColor: Colors.red,
dotColor: Colors.red,
backgroundColor: Colors.black,
borderWidth: 2,
child: Container(color: Colors.black)
);
```

## Properties of ```Animated Cursor```:

| Name            | Type          | Default Behaviour        | Description                                                               |
|-----------------|---------------|--------------------------|---------------------------------------------------------------------------|
| child           | Widget        |                          | The child widget beneath the animated cursor.                             |
| cursor          | MouseCursor?  | SystemMouseCursors.basic | The cursor to be displayed when the mouse is over the child widget        |
| circleColor     | Color?        | Color(0xFF4CAF50)        | Color of the animated circle.                                             |
| dotColor        | Color?        | Color(0xFF4CAF50)        | Color of the animated dot.                                                |
| backgroundColor | Color?        | Colors.transparent       | Background color of the cursor.                                           |
| circleDuration  | Duration?     | 100                      | Duration of the animated circle's appearance.                             |
| dotDuration     | Duration?     | 350                      | Duration of the animated dot's appearance.                                |
| borderWidth     | double?       | 1                        | Width of the cursor's border.                                             |
| shape           | CursorShape?  | BoxShape.circle          | Shape of the cursor (Circle or Rectangle).                                |
| borderRadius    | BorderRadius? | 100                      | Border radius for the cursor (applicable when shape is set to Rectangle). |

## Example

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

## Additional Information

👍 If you appreciate our solution's value and positive impact on your project,✨ show your support
with a thumbs up! 🌟 Your feedback fuels our commitment to excellence.💫 Thank you for choosing us!

**-Darshak Desai**
