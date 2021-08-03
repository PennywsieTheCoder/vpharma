import 'package:flutter/material.dart';
import 'package:vpharma/screens/welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeBody(),
    );
  }
}
