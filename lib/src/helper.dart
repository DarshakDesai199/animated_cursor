import 'package:flutter/material.dart';

class AnimatedCursorState {
  const AnimatedCursorState({this.offset = Offset.zero, this.size = kDefaultSize});

  static const Size kDefaultSize = Size(40, 40);
  final Offset offset;
  final Size size;
}

class AnimatedCursorProvider extends ChangeNotifier {
  AnimatedCursorProvider();

  AnimatedCursorState state = const AnimatedCursorState();

  void updateCursorPosition(Offset pos) {
    state = AnimatedCursorState(offset: pos);
    notifyListeners();
  }
}
