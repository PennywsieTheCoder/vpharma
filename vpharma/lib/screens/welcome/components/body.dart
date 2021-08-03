import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpharma/screens/Login_Page/patient_login.dart';
import 'package:vpharma/screens/Login_Page/pharmacist_login.dart';
import 'package:vpharma/screens/Signup_Page/patient_signup.dart';
import 'package:vpharma/screens/Signup_Page/pharmacist_signup.dart';

class WelcomeBody extends StatefulWidget {
  const WelcomeBody({Key? key}) : super(key: key);

  @override
  _WelcomeBodyState createState() => _WelcomeBodyState();
}

class _WelcomeBodyState extends State<WelcomeBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 55),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'WELCOME TO VPHARMA',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  Image.asset(
                    'images/diagnosislogo.png',
                    height: size.height * 0.55,
                    //width: 500,
                  ),
                  SizedBox(
                    height: size.height * 0.065,
                    width: size.width * 0.85,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                      onPressed: () {
                        print('Login Button Pressed');

                        //Todo: BRINGS UP THE POP UP OPTION
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildLoginDialog(context));
                      },
                      child: Text('LOGIN'),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  SizedBox(
                    height: size.height * 0.065,
                    width: size.width * 0.85,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                      onPressed: () {
                        print('Signup Button Pressed');

                        //Todo: BRINGS UP THE POP UP OPTION
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildSignUpDialog(context));
                      },
                      child: Text('SIGNUP'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Todo: CODE FOR THE LOGIN OPTIONS POP UP
  Widget _buildLoginDialog(BuildContext context) {
    return new AlertDialog(
      title: Text(
        'Login Options: ',
      ),

      //Todo: CODE FOR CONTENT OF THE POP UP
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //TODO: PHARMACIST LOGIN BUTTON
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PharmacistLoginPage()),
              );
            },
            child: Container(
              height: 50.0,
              width: 200,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                //Todo: Change color later
                color: Colors.blue,
                elevation: 7.0,
                child: Center(
                  child: Text(
                    'PHARMACIST',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //TODO: PATIENT LOGIN BUTTON
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PatientLoginPage()),
              );
            },
            child: Container(
              height: 50.0,
              width: 200,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                //Todo: Change color later
                color: Colors.blue,
                elevation: 7.0,
                child: Center(
                  child: Text(
                    'PATIENT',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  //Todo: CODE FOR THE SIGNUP OPTIONS POP UP
  _buildSignUpDialog(BuildContext context) {
    return new AlertDialog(
      title: Text(
        'Signup Options: ',
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PharmacistSignUpPage()),
              );
            },
            child: Container(
              height: 50.0,
              width: 200,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                //Todo: Change color later
                color: Colors.blue,
                elevation: 7.0,
                child: Center(
                  child: Text(
                    'PHARMACIST',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PatientSignUpPage()));
            }, //TODO: ONTAP FUNCTION FOR THE SIGNUP BUTTON
            child: Container(
              height: 50.0,
              width: 200,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                //Todo: Change color later
                color: Colors.blue,
                elevation: 7.0,
                child: Center(
                  child: Text(
                    'PATIENT',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
