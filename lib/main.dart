import 'package:flutter/material.dart';
import 'package:work_with_key_value_storage/example_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExampleWidget(),
    );
  }
}
