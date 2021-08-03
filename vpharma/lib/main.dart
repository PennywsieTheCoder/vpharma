import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpharma/screens/Login_Page/patient_login.dart';
import 'package:vpharma/screens/Login_Page/pharmacist_login.dart';
import 'package:vpharma/screens/Signup_Page/patient_signup.dart';
import 'package:vpharma/screens/Signup_Page/pharmacist_signup.dart';
import 'package:vpharma/screens/welcome/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VPHARMA',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        'patient_login': (context) => PatientLoginPage(),
        'patient_signup': (context) => PatientSignUpPage(),
        'pharmacist_login': (context) => PharmacistLoginPage(),
        'pharmacist_signup': (context) => PharmacistSignUpPage(),
      },
    );
  }
}
