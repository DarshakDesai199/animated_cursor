![Alt Text](https://github.com/DarshakDesai199/animated_cursor/blob/main/screenRecoding/Screen%20Recording%202024-02-06%20at%202.12.16%20PM.gif)

## Animated Cursor Package

[![View on GitHub](https://github.com/SimformSolutionsPvtLtd/flutter_showcaseview/workflows/Build/badge.svg?branch=master)](https://github.com/DarshakDesai199/animated_cursor)

Welcome to the Animated Cursor package for Flutter! This package provides a customizable animated cursor widget that you can easily integrate into your Flutter projects.

## Installing

Add dependency to ```pubspec.yaml```
To use the latest version of `animated_cursor`, add the following line to your `pubspec.yaml`file:

```yaml
dependencies:
  animated_cursor: ^1.0.4
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
AnimatedCursor(
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
| backgroundColor | Color?        | Colors.white             | Background color of the cursor.                                           |
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
👍 If you appreciate our solution's value and positive impact on your project,✨ show your support with a thumbs up! 🌟 Your feedback fuels our commitment to excellence.💫 Thank you for choosing us!

**-Darshak Desai**

## Main Contributors

<div style="display: flex; justify-content: space-around;">
  <div style="text-align: center;">
    <img src="https://blogger.googleusercontent.com/img/a/AVvXsEi4zbsikebIaYJUW5esbB4Co9gd2p91-EVENGDSutmgwaPqo-C9ES9R0oYSJqXg9iedKKUjJtH1ev98yX-M8-K0dmZD-qZj4y0Km_CV8-Knzhh8oidU2J067cRUBkANhs1zD9ntUhukTt4FcyVErltRdlQkvFYjrzAdhl-J3AQEnHTHqd7nw2ykkElVx8lS" alt="John Doe" width="100">
    <p><a href="https://github.com/johndoe">@johndoe</a></p>
  </div>
  <div style="text-align: center;">
    <img src="https://blogger.googleusercontent.com/img/a/AVvXsEi4zbsikebIaYJUW5esbB4Co9gd2p91-EVENGDSutmgwaPqo-C9ES9R0oYSJqXg9iedKKUjJtH1ev98yX-M8-K0dmZD-qZj4y0Km_CV8-Knzhh8oidU2J067cRUBkANhs1zD9ntUhukTt4FcyVErltRdlQkvFYjrzAdhl-J3AQEnHTHqd7nw2ykkElVx8lS" alt="Jane Smith" width="100">
    <p><a href="https://github.com/janesmith">@janesmith</a></p>
  </div>
</div>
