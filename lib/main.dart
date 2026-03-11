import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const JeevaSethuApp());
}

class JeevaSethuApp extends StatelessWidget {
  const JeevaSethuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "JeevaSethu",
      theme: ThemeData(primarySwatch: Colors.red),
      home:  LoginScreen(),

    );
  }
}