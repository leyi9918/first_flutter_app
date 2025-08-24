import 'package:flutter/material.dart';
import 'nav/nav_bar.dart';

void main() {
  runApp(const MyApp());
}
// stateless
// material app
// scaffold
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: Brightness.light,
          )
      ),
      home: Home()
    );
  }
}

