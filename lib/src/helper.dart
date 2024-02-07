import 'package:flutter/material.dart';

// AnimatedCursorState class is created to store the state of the cursor
// It contains the offset and size of the cursor
// The offset is the position of the cursor and the size is the size of the cursor

class AnimatedCursorState {
  const AnimatedCursorState(
      {this.offset = Offset.zero, this.size = kDefaultSize});

  /// The Default offset is the position of the cursor on the screen in pixels
  static const Size kDefaultSize = Size(40, 40);

  /// The Default size is the size of the cursor on the screen in pixels
  final Offset offset;

  /// The offset is the position of the cursor on the screen in pixels
  final Size size;
}
