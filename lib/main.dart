import 'package:data_portal_example_project/data_portal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Work',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 250, 249, 250)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const DataPortal(title: 'Home Work Page'),
    );
  }
}
