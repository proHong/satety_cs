import 'package:flutter/material.dart';
import 'package:safety_cs/presentation/Home.dart';
import 'package:safety_cs/presentation/NotAuthHome.dart';
import 'package:safety_cs/presentation/Register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            TextField(
              controller: userIdController,
              style: TextStyle(
                color: Colors.blue.shade500,
              ),
              decoration: const InputDecoration(
                labelText: '아이디',
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              style: TextStyle(
                color: Colors.blue,
              ),
              decoration: const InputDecoration(
                labelText: "패스워드",
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("로그인"),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, foregroundColor: Colors.white),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              child: const Text("회원가입"),
              onPressed: () {
                final parentState =
                    context.findAncestorStateOfType<NotAuthHomeState>();
                if (parentState != null) {
                  parentState.setIndex(1);
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
