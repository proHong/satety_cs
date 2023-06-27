import 'package:flutter/material.dart';

import 'package:safety_cs/presentation/Board.dart';
import 'package:safety_cs/presentation/ChatRoomList.dart';
import 'package:safety_cs/presentation/EducationRecord.dart';
import 'package:safety_cs/presentation/Setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIdx = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        primaryColor: Colors.black,
      ),
      home: Scaffold(
        body: EducationRecord(),
      ),
    );
  }
}
