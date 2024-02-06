import 'package:animated_cursor/animated_cursor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AnimatedCursor(
        // cursor: SystemMouseCursors.alias,
        circleColor: Colors.red,
        dotColor: Colors.red,
        backgroundColor: Colors.black,
        borderWidth: 2,
        child: Container(color: Colors.black),
      ),
    );
  }
}
