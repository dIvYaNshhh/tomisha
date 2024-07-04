import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:tomisha/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tomisha Test',
      debugShowCheckedModeBanner: false,
      home: FlutterSizer(
        builder: (context, orientation, screenType) {
          return const LoginScreen();
        },
      ),
    );
  }
}
