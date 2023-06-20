import 'package:flutter/material.dart';
import 'package:safety_cs/presentation/Login.dart';
import 'package:safety_cs/presentation/Register.dart';

class NotAuthHome extends StatefulWidget {
  const NotAuthHome({super.key});

  @override
  State<NotAuthHome> createState() => NotAuthHomeState();
}

class NotAuthHomeState extends State<NotAuthHome> {
  int currentIdx = 0;

  setIndex(int idx) {
    setState(() {
      currentIdx = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
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
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(50, 100, 50, 50),
            child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
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
                height: currentIdx == 0
                    ? MediaQuery.of(context).size.height * 0.5
                    : MediaQuery.of(context).size.height * 0.8,
                child: currentIdx == 0 ? LoginPage() : RegisterPage()),
          ),
          SocialLoginCard(index: currentIdx),
          Text(
            currentIdx.toString(),
            style: TextStyle(fontSize: 100),
          ),
        ],
      ),
    );
  }
}

class SocialLoginCard extends StatelessWidget {
  final int index;

  const SocialLoginCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: index == 0 ? 1.0 : 0.0,
      duration: Duration(milliseconds: 250),
      child: Container(
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
          child: Text("소셜 로그인 $index"),
        ),
      ),
    );
  }
}
