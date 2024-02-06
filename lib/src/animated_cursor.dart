import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

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

  final Widget child;
  final MouseCursor? cursor;
  final Color? circleColor, dotColor, backgroundColor;
  final int? circleDuration, dotDuration;
  final double? borderWidth, borderRadius;
  final BoxShape? shape;

  void _onCursorUpdate(PointerEvent event, BuildContext context) =>
      context.read<AnimatedCursorProvider>().updateCursorPosition(event.position);

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
                        color: backgroundColor ?? Colors.white,
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
