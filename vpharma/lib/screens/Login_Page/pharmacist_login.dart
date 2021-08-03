import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:vpharma/screens/HomePage/pharmacist_dashbord.dart';

class PharmacistLoginPage extends StatefulWidget {
  @override
  _PharmacistLoginPageState createState() => _PharmacistLoginPageState();
}

class _PharmacistLoginPageState extends State<PharmacistLoginPage> {
  final _auth = FirebaseAuth.instance;

  bool showSpinner = false;
  late String pharmacist_email;
  late String pharmacist_password;

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
                child: Image.asset('images/about1.jpg'),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  pharmacist_email = value;
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Enter your email',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
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
                  pharmacist_password = value;
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  hintText: 'Enter your password.',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
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
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () async {
                      setState(
                        () {
                          showSpinner = true;
                        },
                      );
                      try {
                        final pharmacist =
                            await _auth.signInWithEmailAndPassword(
                                email: pharmacist_email,
                                password: pharmacist_password);
                        if (pharmacist != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PharmacistDashboard()),
                          );
                          setState(
                            () {
                              showSpinner = false;
                            },
                          );
                        }
                      } catch (e) {
                        print(e);
                      }
                      //Implement login functionality.
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Log In As Pharmacist',
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
