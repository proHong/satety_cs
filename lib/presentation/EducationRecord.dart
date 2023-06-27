import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safety_cs/presentation/Board.dart';
import 'package:safety_cs/presentation/Login.dart';
import 'package:safety_cs/presentation/NotAuthHome.dart';
import 'package:safety_cs/services/AuthService.dart';
import 'package:safety_cs/widgets/TheCard.dart';

class EducationRecord extends StatefulWidget {
  const EducationRecord({super.key});

  @override
  State<EducationRecord> createState() => _EducationRecordState();
}

class _EducationRecordState extends State<EducationRecord> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthService>(
      builder: (context, authService, child) {
        return TheCard(
          top: ElevatedButton(
            onPressed: () {
              authService.signOut();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotAuthHome()),
              );
            },
            child: Text("로그아웃"),
          ),
          bottom: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Board()),
              );
            },
            child: Text("게시판"),
          ),
        );
      },
    );
  }
}
