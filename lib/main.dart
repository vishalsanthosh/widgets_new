import 'package:flutter/material.dart';
import 'package:widgets_new/datepicker.dart';
import 'package:widgets_new/slide.dart';
import 'package:widgets_new/timepicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: DatePickerExp(),
    );
  }
}
