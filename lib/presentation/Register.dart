import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:safety_cs/presentation/NotAuthHome.dart';
import 'package:provider/provider.dart';
import 'package:safety_cs/services/AuthService.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController userIdController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  TextEditingController contactController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthService>(builder: (context, authService, child) {
      User? user = authService.currentUser();
      return SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
              TextField(
                controller: passwordConfirmController,
                obscureText: true,
                style: TextStyle(
                  color: Colors.blue,
                ),
                decoration: const InputDecoration(
                  labelText: "패스워드확인",
                  hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              TextField(
                controller: contactController,
                obscureText: true,
                keyboardType: TextInputType.phone,
                style: TextStyle(
                  color: Colors.blue,
                ),
                decoration: const InputDecoration(
                  labelText: "연락처",
                  hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    authService.register(
                      email: userIdController.text,
                      password: passwordController.text,
                      onSuccess: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("회원가입이 완료되었습니다")));
                        final parentState =
                            context.findAncestorStateOfType<NotAuthHomeState>();
                        if (parentState != null) {
                          parentState.setIndex(0);
                        }
                      },
                      onError: (err) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(err)));
                      },
                    );
                  },
                  child: const Text("회원가입"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
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
                        parentState.setIndex(0);
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
