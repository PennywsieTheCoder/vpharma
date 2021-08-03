import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vpharma/screens/HomePage/home_dashboard.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class PatientSignUpPage extends StatefulWidget {
  @override
  _PatientSignUpPageState createState() => _PatientSignUpPageState();
}

class _PatientSignUpPageState extends State<PatientSignUpPage> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  late String patient_email;
  late String patient_password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 200.0,
                child: Image.asset('images/diagnosislogo.png'),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  patient_email = value;
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                obscuringCharacter: '*',
                onChanged: (value) {
                  patient_password = value;
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                  child: MaterialButton(
                    //TODO PASSWORD MUST BE AT LEAST 6 CHARACTERS
                    onPressed: () async {
                      setState(
                        () {
                          showSpinner = true;
                        },
                      );
                      try {
                        final newPatient =
                            await _auth.createUserWithEmailAndPassword(
                                email: patient_email,
                                password: patient_password);
                        if (newPatient != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeDashboard()),
                          );
                          setState(() {
                            showSpinner = false;
                          });
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    //print(patient_email);
                    //print(patient_password);
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Register As A Patient',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
