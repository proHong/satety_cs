import 'package:flutter/material.dart';
import 'package:safety_cs/presentation/Home.dart';
import 'package:safety_cs/presentation/Login.dart';
import 'package:safety_cs/presentation/NotAuthHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Safety_CS',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade200),
          useMaterial3: true,
        ),
        home: const NotAuthHome());
  }
}
