import 'package:flutter/material.dart';
import 'package:tomisha/screens/login/login_desktop.dart';
import 'package:tomisha/screens/login/login_mobile.dart';
import 'package:tomisha/screens/responsive/responsive_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileWidget: LoginMobile(),
        desktopWidget: LoginDesktop(),
      ),
    );
  }
}
