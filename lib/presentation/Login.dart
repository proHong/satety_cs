import 'package:flutter/material.dart';
import 'package:safety_cs/presentation/Home.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          LoginBackground(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(50, 100, 50, 50),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                      offset: const Offset(0, 3),
                    )
                  ]),
              padding: EdgeInsets.all(32.0),
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
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
                          hintStyle:
                              TextStyle(fontSize: 13, color: Colors.grey),
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
                          hintStyle:
                              TextStyle(fontSize: 13, color: Colors.grey),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.fromLTRB(50, 0, 50, 50),
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        offset: const Offset(0, 3),
                      )
                    ]),
                padding: EdgeInsets.all(10.0),
                height: 70,
                child: Text("소셜 로그인")),
          )
        ],
      ),
    );
  }
}

class LoginBackground extends StatelessWidget {
  const LoginBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
