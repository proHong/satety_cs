import 'package:flutter/material.dart';
import 'package:safety_cs/presentation/Home.dart';
import 'package:safety_cs/presentation/NotAuthHome.dart';

import 'package:provider/provider.dart';

import 'package:safety_cs/services/AuthService.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    // 최상위 디렉토리에서 multiprovider로 감싸서 해당 서비스에서 값 변경을 알리면 위젯에 반영을 하기 위함.
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthService(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    User? user = context.read<AuthService>().currentUser();
    return MaterialApp(
        title: 'Safety_CS',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade200),
          useMaterial3: true,
        ),
        home: user == null ? NotAuthHome() : HomePage());
  }
}
