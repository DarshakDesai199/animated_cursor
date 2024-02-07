import 'package:flutter/material.dart';

import 'helper.dart';

// AnimatedCursorProvider class is created to store the state of the cursor
// It contains the state of the cursor

class AnimatedCursorProvider extends ChangeNotifier {
  AnimatedCursorProvider();

  /// The AnimatedCursorState is the state of the cursor
  AnimatedCursorState state = const AnimatedCursorState();

// updateCursorPosition method is created to update the position of the cursor
  void updateCursorPosition(Offset pos) {
    state = AnimatedCursorState(offset: pos);
    notifyListeners();
  }
}
