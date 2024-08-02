import 'package:fintech_app/core/view/all_views.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FintechApp());
  // runApp(DevicePreview(builder: (context) =>  const FintechApp()));
}

class FintechApp extends StatelessWidget {
  const FintechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllViews(),
    );
  }
}
