import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
    return Scaffold(
      body: IndexedStack(
        children: [
          EducationRecord(),
          Board(),
          ChatRoomList(),
          Setting(),
        ],
        index: currentIdx,
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'EducationRecord'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (index) {
          this.setState(() {
            currentIdx = index;
          });
        },
      ),
    );
  }
}
