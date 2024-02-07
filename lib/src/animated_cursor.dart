import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

/// AnimatedCursor is a widget that animates the cursor on the screen
/// It takes in a child and a few optional parameters
/// The child is the widget that the cursor will be displayed on
/// The cursor is the type of cursor that will be displayed
/// The circleColor is the color of the circle that will be displayed
/// The dotColor is the color of the dot that will be displayed
/// The backgroundColor is the color of the background of the cursor
///  The circleDuration is the duration of the circle animation
///  The dotDuration is the duration of the dot animation
///  The borderWidth is the width of the border of the cursor
///  The shape is the shape of the cursor
///  The borderRadius is the radius of the border of the cursor
///  The cursor is displayed as a circle with a dot in the middle
///  The cursor is animated to move with the cursor, change color, border and shape.
///  The dot is displayed in the middle of the circle
///  The dot is animated to move with the cursor

class AnimatedCursor extends StatelessWidget {
  const AnimatedCursor({
    Key? key,
    required this.child,
    this.cursor,
    this.circleColor,
    this.dotColor,
    this.backgroundColor,
    this.circleDuration,
    this.dotDuration,
    this.borderWidth,
    this.shape,
    this.borderRadius,
  }) : super(key: key);

  /// The child is the widget that the cursor will be displayed on
  final Widget child;

  /// The cursor is the type of cursor that will be displayed
  final MouseCursor? cursor;

  /// The circleColor is the color of the circle that will be displayed
  /// The dotColor is the color of the dot that will be displayed
  /// The backgroundColor is the color of the background of the cursor
  final Color? circleColor, dotColor, backgroundColor;

  /// The circleDuration is the duration of the circle animation
  /// The dotDuration is the duration of the dot animation
  final int? circleDuration, dotDuration;

  /// The borderWidth is the width of the border of the cursor
  /// The borderRadius is the radius of the border of the cursor
  final double? borderWidth, borderRadius;

  /// The shape is the shape of the cursor
  final BoxShape? shape;

  /// _onCursorUpdate method is created to update the position of the cursor
  void _onCursorUpdate(PointerEvent event, BuildContext context) => context
      .read<AnimatedCursorProvider>()
      .updateCursorPosition(event.position);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AnimatedCursorProvider(),
      child: Consumer<AnimatedCursorProvider>(
        child: child,
        builder: (context, provider, child) {
          final state = provider.state;
          return Stack(
            children: [
              if (child != null) child,
              Positioned.fill(
                child: MouseRegion(
                  opaque: false,
                  cursor: cursor ?? SystemMouseCursors.basic,
                  onHover: (e) => _onCursorUpdate(e, context),
                ),
              ),
              if (state.offset != Offset.zero) ...[
                /// The cursor is displayed as a circle with a dot in the middle
                /// The cursor is animated to move with the cursor, change color, border and shape.
                AnimatedPositioned(
                  left: state.offset.dx - state.size.width / 1.8,
                  top: state.offset.dy - state.size.height / 1.8,
                  width: state.size.width,
                  height: state.size.height,
                  duration: Duration(milliseconds: circleDuration ?? 100),
                  child: IgnorePointer(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: circleDuration ?? 100),
                      curve: Curves.easeIn,
                      width: state.size.width,
                      height: state.size.height,
                      decoration: BoxDecoration(
                        color: backgroundColor ?? Colors.transparent,
                        border: Border.all(
                          color: circleColor ?? const Color(0xFF4CAF50),
                          width: borderWidth ?? 1,
                        ),
                        borderRadius: shape == BoxShape.circle || shape == null
                            ? null
                            : BorderRadius.circular(borderRadius ?? 100),
                        shape: shape ?? BoxShape.circle,
                      ),
                    ),
                  ),
                ),

                /// The dot is displayed in the middle of the circle
                /// The dot is animated to move with the cursor
                /// The dot is also animated to change color, size and shape
                AnimatedPositioned(
                  left: state.offset.dx - state.size.width / 7.2,
                  top: state.offset.dy - state.size.height / 7.2,
                  width: 7,
                  height: 7,
                  duration: Duration(milliseconds: dotDuration ?? 350),
                  child: IgnorePointer(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: dotDuration ?? 350),
                      curve: Curves.easeIn,
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        color: dotColor ?? const Color(0xFF4CAF50),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
